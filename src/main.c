#include <nds.h>
#include <stdio.h>
#include <string.h>
#include <maxmod9.h>

SpriteEntry OAMCopy[128];

#include <Store.h>
#include <Scroll.h>
#include <ScarletMap.h>
#include <PolyMars16.h>
#include <Enemy.h>
#include <Hearts.h>
#include <PressStart.h>

#include "soundbank.h"
#include "soundbank_bin.h"

#include "events.c"

volatile int frame = 0;

enum { CONTINUOUS, SINGLE } TouchType = CONTINUOUS;

void Vblank() {
	frame++;
}

//---------------------------------------------------------------------------------
int main(void) {
//---------------------------------------------------------------------------------

	//Create Objects
	Sprite PolyMars = {0,0};
	PolyMars.Xpos = 50;
	PolyMars.Ypos = 100;
	PolyMars.Health = 3;

	Sprite Object1 = {0,0};
	Object1.Xpos = 256 + rand() % 32;
	Object1.Ypos = 100;

	Sprite Object2 = {0,0};
	Object2.Xpos = 256 + rand() % 32;
	Object2.Ypos = 140;

	Sprite Object3 = {0,0};
	Object3.Xpos = 256 + rand() % 32;
	Object3.Ypos = 30;

	Sprite Object4 = {0,0};
	Object4.Xpos = 256 + rand() % 32;
	Object4.Ypos = 70;

	Sprite Object5 = {0,0};
	Object5.Xpos = 256 + rand() % 32;
	Object5.Ypos = 80;

	Sprite Heart1 = {0,0};
	Heart1.Xpos = 0;
	Heart1.Ypos = 0;

	Sprite Heart2 = {0,0};
	Heart2.Xpos = 16;
	Heart2.Ypos = 0;

	Sprite Heart3 = {0,0};
	Heart3.Xpos = 32;
	Heart3.Ypos = 0;

	Sprite PressStart1 = {0,0};
	PressStart1.Xpos = 100;
	PressStart1.Ypos = 100;
	
	Sprite PressStart2 = {0,0};
	PressStart2.Xpos = 132;
	PressStart2.Ypos = 100;
	
	//Set Up Collision Boxes
	Box PolyBox;
	PolyBox.OffsetX = 0;
	PolyBox.OffsetY = 0; //26
	PolyBox.Xpos = PolyBox.Xpos + PolyBox.OffsetX;
	PolyBox.Ypos = PolyBox.Ypos + PolyBox.OffsetY;
	PolyBox.SizeX = 16;
	PolyBox.SizeY = 16;

	Box Object1Box;
	Object1Box.OffsetX = 4;
	Object1Box.OffsetY = 5;
	Object1Box.Xpos = Object1.Xpos + Object1Box.OffsetX;
	Object1Box.Ypos = Object1.Ypos + Object1Box.OffsetY;
	Object1Box.SizeX = 24;
	Object1Box.SizeY = 22;

	Box Object2Box;
	Object2Box.OffsetX = 4;
	Object2Box.OffsetY = 5;
	Object2Box.Xpos = Object2.Xpos + Object2Box.OffsetX;
	Object2Box.Ypos = Object2.Ypos + Object2Box.OffsetY;
	Object2Box.SizeX = 24;
	Object2Box.SizeY = 22;

	Box Object3Box;
	Object3Box.OffsetX = 4;
	Object3Box.OffsetY = 5;
	Object3Box.Xpos = Object3.Xpos + Object3Box.OffsetX;
	Object3Box.Ypos = Object3.Ypos + Object3Box.OffsetY;
	Object3Box.SizeX = 24;
	Object3Box.SizeY = 22;

	Box Object4Box;
	Object4Box.OffsetX = 4;
	Object4Box.OffsetY = 5;
	Object4Box.Xpos = Object4.Xpos + Object4Box.OffsetX;
	Object4Box.Ypos = Object4.Ypos + Object4Box.OffsetY;
	Object4Box.SizeX = 24;
	Object4Box.SizeY = 22;

	Box Object5Box;
	Object5Box.OffsetX = 4;
	Object5Box.OffsetY = 5;
	Object5Box.Xpos = Object5.Xpos + Object5Box.OffsetX;
	Object5Box.Ypos = Object5.Ypos + Object5Box.OffsetY;
	Object5Box.SizeX = 24;
	Object5Box.SizeY = 22;

	int Speed = 2;
	int AsteroidSpeed = 2;
	bool hit1;
	bool hit2;
	bool hit3;
	bool hit4;
	bool hit5;

	bool PolyDead = true;

	//Touch Position
	touchPosition touch;
   
   //Setting Video Modes
    videoSetMode(  MODE_0_2D | 
                   DISPLAY_SPR_ACTIVE |		//turn on sprites
                   DISPLAY_BG0_ACTIVE |		//turn on background 0
                   DISPLAY_SPR_1D			//this is used when in tile mode
                    );

	videoSetMode(MODE_5_2D);
	videoSetModeSub(MODE_0_2D);


	//Setting the banks. Does not include the F bank
	vramSetBankA(VRAM_A_MAIN_BG_0x06000000);
	vramSetBankD(VRAM_D_SUB_SPRITE);

	//Set up oam
	oamInit(&oamMain, SpriteMapping_1D_128, true);
	oamInit(&oamSub, SpriteMapping_1D_128, false);

	//Set bank F
	vramSetBankF(VRAM_F_LCD);
	init16(&PolyMars, (u8*)PolyMars16Tiles);
	dmaCopy(PolyMars16Pal, &VRAM_F_EXT_SPR_PALETTE[0][0],PolyMars16PalLen);

	init32(&Object1, (u8*)EnemyTiles);
	dmaCopy(EnemyPal, &VRAM_F_EXT_SPR_PALETTE[1][0],EnemyPalLen);

	init16(&Heart1, (u8*)HeartsTiles);
	dmaCopy(HeartsPal, &VRAM_F_EXT_SPR_PALETTE[2][0],HeartsPalLen);
	init16(&Heart2, (u8*)HeartsTiles);
	dmaCopy(HeartsPal, &VRAM_F_EXT_SPR_PALETTE[2][0],HeartsPalLen);
	init16(&Heart3, (u8*)HeartsTiles);
	dmaCopy(HeartsPal, &VRAM_F_EXT_SPR_PALETTE[2][0],HeartsPalLen);

	init32(&PressStart1, (u8*)PressStartTiles);
	dmaCopy(PressStartPal, &VRAM_F_EXT_SPR_PALETTE[3][0],PressStartPalLen);
	init32(&PressStart2, (u8*)PressStartTiles);
	dmaCopy(PressStartPal, &VRAM_F_EXT_SPR_PALETTE[3][0],PressStartPalLen);
	vramSetBankF(VRAM_F_SPRITE_EXT_PALETTE);

	Object2.sprite_gfx_mem = Object1.sprite_gfx_mem;
	Object2.frame_gfx = Object1.frame_gfx;
	Object3.sprite_gfx_mem = Object1.sprite_gfx_mem;
	Object3.frame_gfx = Object1.frame_gfx;
	Object4.sprite_gfx_mem = Object1.sprite_gfx_mem;
	Object4.frame_gfx = Object1.frame_gfx;
	Object5.sprite_gfx_mem = Object1.sprite_gfx_mem;
	Object5.frame_gfx = Object1.frame_gfx;

	int bg3 = bgInit(3, BgType_Bmp8, BgSize_B8_256x256, 0,0);
	dmaCopy(StoreBitmap, bgGetGfxPtr(bg3), 256*192);
	dmaCopy(StorePal, BG_PALETTE, 256*2);
		
	//Make the bottom screen a blue color
	setBackdropColorSub(5555000000009999);
	
	mmInitDefaultMem((mm_addr)soundbank_bin);
	
	// load the module
	mmLoad( MOD_MYSONG );

	// load sound effects
	//mmLoadEffect( SFX_AMBULANCE );
	//mmLoadEffect( SFX_BOOM );

	// Start playing module
	mmStart( MOD_MYSONG, MM_PLAY_LOOP );

/*
	mm_sound_effect ambulance = {
		{ SFX_AMBULANCE } ,			// id
		(int)(1.0f * (1<<10)),	// rate
		0,		// handle
		255,	// volume
		0,		// panning
	};
*/	

	PolyMars.Health = 3;

	//Loops every frame
	while(1) {

		swiWaitForVBlank();

		scanKeys();

		touchRead(&touch);
		
		int pressed = keysDown();
		int held = keysHeld();
		int released = keysUp();

		if(PolyMars.Health == 3){
			Heart3.anim_frame = 0;
			Heart2.anim_frame = 0;
			Heart1.anim_frame = 0;
		}
		if(PolyMars.Health == 2){
			Heart3.anim_frame = 1;
			Heart2.anim_frame = 0;
			Heart1.anim_frame = 0;
		}
		if(PolyMars.Health == 1){
			Heart3.anim_frame = 1;
			Heart2.anim_frame = 1;
			Heart1.anim_frame = 0;
		}
		if(PolyMars.Health <= 0){
			Heart3.anim_frame = 1;
			Heart2.anim_frame = 1;
			Heart1.anim_frame = 1;
			PolyDead = true;
		}

		if(held & KEY_UP){
			if(PolyMars.Ypos <= 0){	}else{PolyMars.Ypos -= Speed;}
		}
		else if(held & KEY_DOWN){
			if(PolyMars.Ypos >= 192 - 16){}else{PolyMars.Ypos += Speed;}
		}
		if(held & KEY_LEFT){
			if(PolyMars.Xpos <= 0){}else{PolyMars.Xpos -= Speed;}
		}
		else if(held & KEY_RIGHT){
			if(PolyMars.Xpos >= 256 - 16){}else{PolyMars.Xpos += Speed;}
		}

		PolyBox.Xpos = PolyMars.Xpos + PolyBox.OffsetX;
		PolyBox.Ypos = PolyMars.Ypos + PolyBox.OffsetY;

		if(Object1.Xpos <= -40){
			Object1.Ypos = rand() % 160;
			Object1.Xpos = 256 + 8;
		}
		else{
			Object1.Xpos -= AsteroidSpeed; Object1Box.Xpos = Object1.Xpos + Object1Box.OffsetX; Object1Box.Ypos = Object1.Ypos + Object1Box.OffsetY;
		}
		if(Object2.Xpos <= -40){
			Object2.Ypos = rand() % 160;
			Object2.Xpos = 256 + 8;
		}
		else{
			Object2.Xpos -= AsteroidSpeed; Object2Box.Xpos = Object2.Xpos + Object2Box.OffsetX; Object2Box.Ypos = Object2.Ypos + Object2Box.OffsetY;
		}
		if(Object3.Xpos <= -40){
			Object3.Ypos = rand() % 160;
			Object3.Xpos = 256 + 8;
		}
		else{
			Object3.Xpos -= AsteroidSpeed; Object3Box.Xpos = Object3.Xpos + Object3Box.OffsetX; Object3Box.Ypos = Object3.Ypos + Object3Box.OffsetY;
		}
		if(Object4.Xpos <= -40){
			Object4.Ypos = rand() % 160;
			Object4.Xpos = 256 + 8;
		}
		else{
			Object4.Xpos -= AsteroidSpeed; Object4Box.Xpos = Object4.Xpos + Object4Box.OffsetX; Object4Box.Ypos = Object4.Ypos + Object4Box.OffsetY;
		}
		if(Object5.Xpos <= -40){
			Object5.Ypos = rand() % 160;
			Object5.Xpos = 256 + 8;
		}
		else{
			Object5.Xpos -= AsteroidSpeed; Object5Box.Xpos = Object5.Xpos + Object5Box.OffsetX; Object5Box.Ypos = Object5.Ypos + Object5Box.OffsetY;
		}

		hit1 = CollisionCheck(PolyBox, Object1Box);
		if(hit1 == true){
			PolyMars.Health--;
			Object1.Xpos = 256 + 32;
			Object1Box.Xpos = 256 + 32;
		}
		hit2 = CollisionCheck(PolyBox, Object2Box);
		if(hit2 == true){
			PolyMars.Health--;
			Object2.Xpos = 256 + 32;
			Object2Box.Xpos = 256 + 32;
		}
		hit3 = CollisionCheck(PolyBox, Object3Box);
		if(hit3 == true){
			PolyMars.Health--;
			Object3.Xpos = 256 + 32;
			Object3Box.Xpos = 256 + 32;
		}
		hit4 = CollisionCheck(PolyBox, Object4Box);
		if(hit4 == true){
			PolyMars.Health--;
			Object4.Xpos = 256 + 32;
			Object4Box.Xpos = 256 + 32;
		}
		hit5 = CollisionCheck(PolyBox, Object5Box);
		if(hit5 == true){
			PolyMars.Health--;
			Object5.Xpos = 256 + 32;
			Object5Box.Xpos = 256 + 32;
		}

		PressStart2.anim_frame = 1;

		animate16(&PolyMars);
		animate32(&Object1);
		animate32(&Object2);
		animate32(&Object3);
		animate32(&Object4);
		animate32(&Object5);

		animate16(&Heart1);
		animate16(&Heart2);
		animate16(&Heart3);

		animate32(&PressStart1);
		animate32(&PressStart2);
		if(PolyDead == true){
			oamClear(&oamMain, 0, 127);
			if(pressed & KEY_START){
				PolyMars.Health = 3;
				PolyMars.Xpos = 50;
				PolyMars.Ypos = 100;
				PolyMars.Health = 3;

				Object1.Xpos = 256 + rand() % 32;
				Object1.Ypos = 100;

				Object2.Xpos = 256 + rand() % 32;
				Object2.Ypos = 140;

				Object3.Xpos = 256 + rand() % 32;
				Object3.Ypos = 30;

				Object4.Xpos = 256 + rand() % 32;
				Object4.Ypos = 70;

				Object5.Xpos = 256 + rand() % 32;
				Object5.Ypos = 80;

				Heart1.Xpos = 0;
				Heart1.Ypos = 0;

				Heart2.Xpos = 16;
				Heart2.Ypos = 0;

				Heart3.Xpos = 32;
				Heart3.Ypos = 0;

				PressStart1.Xpos = 100;
				PressStart1.Ypos = 100;
				
				PressStart2.Xpos = 132;
				PressStart2.Ypos = 100;
				
				PolyBox.OffsetX = 0;
				PolyBox.OffsetY = 0; //26
				PolyBox.Xpos = PolyBox.Xpos + PolyBox.OffsetX;
				PolyBox.Ypos = PolyBox.Ypos + PolyBox.OffsetY;
				PolyBox.SizeX = 16;
				PolyBox.SizeY = 16;

				Object1Box.OffsetX = 4;
				Object1Box.OffsetY = 5;
				Object1Box.Xpos = Object1.Xpos + Object1Box.OffsetX;
				Object1Box.Ypos = Object1.Ypos + Object1Box.OffsetY;
				Object1Box.SizeX = 24;
				Object1Box.SizeY = 22;

				Object2Box.OffsetX = 4;
				Object2Box.OffsetY = 5;
				Object2Box.Xpos = Object2.Xpos + Object2Box.OffsetX;
				Object2Box.Ypos = Object2.Ypos + Object2Box.OffsetY;
				Object2Box.SizeX = 24;
				Object2Box.SizeY = 22;

				Object3Box.OffsetX = 4;
				Object3Box.OffsetY = 5;
				Object3Box.Xpos = Object3.Xpos + Object3Box.OffsetX;
				Object3Box.Ypos = Object3.Ypos + Object3Box.OffsetY;
				Object3Box.SizeX = 24;
				Object3Box.SizeY = 22;

				Object4Box.OffsetX = 4;
				Object4Box.OffsetY = 5;
				Object4Box.Xpos = Object4.Xpos + Object4Box.OffsetX;
				Object4Box.Ypos = Object4.Ypos + Object4Box.OffsetY;
				Object4Box.SizeX = 24;
				Object4Box.SizeY = 22;

				Object5Box.OffsetX = 4;
				Object5Box.OffsetY = 5;
				Object5Box.Xpos = Object5.Xpos + Object5Box.OffsetX;
				Object5Box.Ypos = Object5.Ypos + Object5Box.OffsetY;
				Object5Box.SizeX = 24;
				Object5Box.SizeY = 22;

				PolyDead = false;
			}
			oamSet(&oamMain, 9, PressStart1.Xpos, PressStart1.Ypos, 0, 3, SpriteSize_32x32, SpriteColorFormat_256Color, 
				PressStart1.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 10, PressStart2.Xpos, PressStart2.Ypos, 0, 3, SpriteSize_32x32, SpriteColorFormat_256Color, 
				PressStart2.sprite_gfx_mem, -1, false, false, false, false, false);
		}
		if(PolyDead == false){
			oamClearSprite(&oamMain, 9);
			oamClearSprite(&oamMain, 10);
			oamSet(&oamMain, 0, PolyMars.Xpos, PolyMars.Ypos, 0, 0, SpriteSize_16x16, SpriteColorFormat_256Color, 
				PolyMars.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 1, Object1.Xpos, Object1.Ypos, 0, 1, SpriteSize_32x32, SpriteColorFormat_256Color, 
				Object1.sprite_gfx_mem, -1, false, false, false, false, false);
		
			oamSet(&oamMain, 2, Object2.Xpos, Object2.Ypos, 0, 1, SpriteSize_32x32, SpriteColorFormat_256Color, 
				Object2.sprite_gfx_mem, -1, false, false, false, false, false);
			oamSet(&oamMain, 3, Object3.Xpos, Object3.Ypos, 0, 1, SpriteSize_32x32, SpriteColorFormat_256Color, 
				Object3.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 4, Object4.Xpos, Object4.Ypos, 0, 1, SpriteSize_32x32, SpriteColorFormat_256Color, 
				Object4.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 5, Object5.Xpos, Object5.Ypos, 0, 1, SpriteSize_32x32, SpriteColorFormat_256Color, 
				Object5.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 6, Heart1.Xpos, Heart1.Ypos, 0, 2, SpriteSize_16x16, SpriteColorFormat_256Color, 
				Heart1.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 7, Heart2.Xpos, Heart2.Ypos, 0, 2, SpriteSize_16x16, SpriteColorFormat_256Color, 
				Heart2.sprite_gfx_mem, -1, false, false, false, false, false);

			oamSet(&oamMain, 8, Heart3.Xpos, Heart3.Ypos, 0, 2, SpriteSize_16x16, SpriteColorFormat_256Color, 
				Heart3.sprite_gfx_mem, -1, false, false, false, false, false);
		}

		oamUpdate(&oamMain);
	}
}