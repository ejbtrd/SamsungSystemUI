.class public Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;
.super Ljava/lang/Object;
.source "NavBarIconResourceMapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mIsRTL:Z

.field mIsThemeDefault:Z

.field mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

.field mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field mOpenTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mOpenThemeSysUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->initData()V

    return-void
.end method

.method private determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 9

    const-string v0, ", DarkThemeIcon : "

    const-string v1, "NavBarIconResourceMapper"

    .line 302
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    if-nez v2, :cond_0

    .line 303
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x1080598

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x108059a

    .line 311
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x1080597

    .line 312
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x108059c

    .line 313
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x108059f

    .line 314
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 317
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v6, 0x1080595

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v6, 0x1080599

    .line 318
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v6, 0x1080596

    .line 319
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v6, 0x108059b

    .line 320
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v6, 0x108059e

    .line 321
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :catch_0
    move v4, v3

    .line 325
    :catch_1
    iget-object v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateOpenThemeIcon OpenThemeIconResource NotFoundExceptionLightThemeIcon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v5, v3

    .line 331
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sysbar_back_theme:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_theme:I

    .line 332
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_theme:I

    .line 333
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sysbar_home_theme:I

    .line 334
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_theme:I

    .line 335
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v3

    .line 338
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark_theme:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_dark_theme:I

    .line 339
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark_theme:I

    .line 340
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_home_dark_theme:I

    .line 341
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_dark_theme:I

    .line 342
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    move v3, v2

    goto :goto_4

    :catch_2
    move v6, v3

    .line 346
    :catch_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateOpenThemeIcon OpenThemeIconResource from SysUI NotFoundExceptionLightThemeIcon : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 352
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    .line 354
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0

    .line 356
    :cond_6
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0
.end method

.method private getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 30

    move-object/from16 v0, p0

    .line 82
    sget-object v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$1;->$SwitchMap$com$samsung$systemui$splugins$navigationbar$IconThemeType:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/16 v13, 0xf

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    if-eq v1, v15, :cond_1

    if-eq v1, v14, :cond_0

    .line 138
    iget-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "NavBarIconResourceMapper"

    const-string v3, "getIconResourceArray() Invalid IconThemeType return TYPE_DEFAULT"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v13, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 120
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v13, Lcom/android/systemui/R$drawable;->ic_sysbar_back_theme:I

    sget v22, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark_theme:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v18, v13

    move/from16 v19, v22

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v19, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move/from16 v20, v13

    move/from16 v21, v22

    move/from16 v22, v16

    invoke-direct/range {v18 .. v23}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v25, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_theme:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark_theme:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v1

    move/from16 v26, v18

    move/from16 v27, v19

    invoke-direct/range {v24 .. v29}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sysbar_home_theme:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sysbar_home_dark_theme:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_theme:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_dark_theme:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_theme:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_dark_theme:I

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v10, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_ime:I

    invoke-direct {v1, v2, v10, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_accessibility_button:I

    invoke-direct {v1, v2, v9, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint_dark:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v12, v18

    move/from16 v13, v19

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_dark:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_vi:I

    move-object/from16 v16, v1

    move/from16 v18, v19

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_show:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_hide:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0

    :cond_1
    new-array v0, v13, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 102
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x1080598

    const v19, 0x1080595

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x1080598

    const v25, 0x1080595

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x1080597

    const v19, 0x1080596

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x1080597

    const v25, 0x1080596

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x108059c

    const v19, 0x108059b

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x108059f

    const v25, 0x108059e

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x108059a

    const v19, 0x1080599

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v10, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_ime:I

    invoke-direct {v1, v2, v10, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_accessibility_button:I

    invoke-direct {v1, v2, v9, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint_dark:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v12, v18

    move/from16 v13, v19

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_dark:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_vi:I

    move-object/from16 v16, v1

    move/from16 v18, v19

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_show:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_hide:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0

    :cond_2
    new-array v0, v13, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 84
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v13, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back:I

    sget v22, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back_dark:I

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v18, v13

    move/from16 v19, v22

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v19, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v3, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move/from16 v20, v13

    move/from16 v21, v22

    move/from16 v22, v3

    invoke-direct/range {v18 .. v23}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v25, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back_ime:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back_ime_dark:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v1

    move/from16 v26, v18

    move/from16 v27, v19

    invoke-direct/range {v24 .. v29}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_home:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_home_dark:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_recent:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_recent_dark:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_docked:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_docked_dark:I

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_ime:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_ime_dark:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v12, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_accessibility_button:I

    sget v13, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_accessibility_button_dark:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v10, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint:I

    sget v11, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_handle_hint_dark:I

    move-object/from16 v16, v1

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_dark:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_gesture_hint_vi:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    move v8, v9

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_show:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_show_dark:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v5, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_hide:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_navi_hide_dark:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 4

    .line 72
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p0

    .line 75
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    .line 76
    iget-object v3, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v3, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 65
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 66
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 67
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 68
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenThemeSysUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method private isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z
    .locals 0

    .line 298
    iget-object p0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_1
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenThemeSysUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "NavBarIconResourceMapper"

    const-string v2, "no icon theme type define make theme default"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    .line 167
    :goto_0
    iget-boolean v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    if-eqz v0, :cond_3

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsRTL:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-boolean v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_7

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    iget v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-ne v0, v2, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget-boolean p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;IZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    goto :goto_2

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    :goto_2
    return-object p0

    .line 179
    :cond_5
    iget-object v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    goto :goto_3

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    if-eqz v1, :cond_8

    .line 184
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0

    .line 186
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    iget v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-ne v0, v2, :cond_9

    .line 188
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget-boolean p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;IZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    goto :goto_4

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    :goto_4
    return-object p0

    .line 191
    :cond_a
    iget-object v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    .line 192
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    goto :goto_5

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-object p0
.end method

.method public getGestureHandleDrawable()Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    const/4 v1, 0x0

    .line 203
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "NavBarIconResourceMapper"

    const-string v3, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 209
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGestureHintDrawable(IZ)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v2, "NavBarIconResourceMapper"

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenThemeSysUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "no icon theme type define make theme default"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 253
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-eqz p2, :cond_3

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_5

    .line 255
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    move v6, p1

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 257
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v3, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    invoke-interface {v2, p0, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_5

    .line 261
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_4
    invoke-interface {v2, p0, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public getGestureHintViDrawable(IZ)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v2, "NavBarIconResourceMapper"

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_1
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOpenThemeSysUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "no icon theme type define make theme default"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 283
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-eqz p2, :cond_3

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_5

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    move v6, p1

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 287
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v3, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    invoke-interface {v2, p0, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_5

    .line 291
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_4
    invoke-interface {v2, p0, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 222
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "NavBarIconResourceMapper"

    const-string v2, "SecondaryHomeHandleDrawable not found exception"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 228
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method public updateConditions(Z)V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 361
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 360
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsRTL:Z

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 364
    iget-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConditions isThemeDefault : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRTL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mIsRTL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ThemeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 365
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBarIconResourceMapper"

    .line 364
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
