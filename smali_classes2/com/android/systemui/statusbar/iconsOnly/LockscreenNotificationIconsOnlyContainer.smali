.class public Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
.super Landroid/widget/LinearLayout;
.source "LockscreenNotificationIconsOnlyContainer.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ADAPTIVE_COLOR_NOT_SUPPORT:I

.field private final ADAPTIVE_COLOR_STATE:I

.field private final ICON_COLOR:I

.field private final ICON_COLOR_FOR_WHITE_BG:I

.field private final SHADOW_COLOR:I

.field private final SHADOW_COLOR_FOR_WHITE_BG:I

.field private mClockSelectedColor:I

.field private mClockSelectedColorWhiteBg:I

.field private mColorTheme:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsColorTheme:Z

.field private mIsShadowShown:Z

.field private mIsWallpaperWhite:Z

.field private mNIOType:I

.field private mRefArea:J

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mTextIconHeight:I

.field private mTextPadding:I

.field private mTextSize:I

.field private mTouchHandler:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;

.field private mTouchPadding:I

.field private mpluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0x50506

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->ICON_COLOR:I

    const/high16 p2, 0x66000000

    .line 56
    iput p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->SHADOW_COLOR:I

    const p2, -0xdadadb

    .line 58
    iput p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->ICON_COLOR_FOR_WHITE_BG:I

    const v0, 0x4dfafafa    # 5.26344E8f

    .line 59
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->SHADOW_COLOR_FOR_WHITE_BG:I

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->ADAPTIVE_COLOR_STATE:I

    const/4 v0, 0x3

    .line 62
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->ADAPTIVE_COLOR_NOT_SUPPORT:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    .line 68
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mNIOType:I

    .line 69
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextSize:I

    .line 70
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextPadding:I

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColor:I

    .line 77
    iput p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColorWhiteBg:I

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 385
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 386
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 393
    :cond_2
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 398
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private getOpenThemeBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 405
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->lock_noti_icononly_ic_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeColor(Z)I

    move-result p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private getOpenThemeColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->open_theme_nio_tint_color_black:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->open_theme_nio_tint_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getOpenThemeNotiTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_count_text_color_black:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_count_text_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getOpenThemeShadowColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->open_theme_nio_shadow_color_black:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->open_theme_nio_shadow_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 345
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 347
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 348
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p3

    sub-float/2addr v3, p7

    int-to-float v5, p2

    sub-float/2addr v5, p8

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 352
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 353
    invoke-virtual {v1, p7, p8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 355
    new-instance p7, Landroid/graphics/Canvas;

    invoke-direct {p7, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 356
    new-instance p8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 357
    invoke-virtual {p7, p1, v0, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 358
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 359
    invoke-virtual {p7, p1, v1, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 361
    new-instance p7, Landroid/graphics/BlurMaskFilter;

    int-to-float p6, p6

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p7, p6, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 362
    invoke-virtual {p8}, Landroid/graphics/Paint;->reset()V

    .line 363
    invoke-virtual {p8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    invoke-virtual {p8, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    invoke-virtual {p8, p7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 366
    invoke-virtual {p8, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 368
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v2}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p9, :cond_0

    .line 370
    new-instance p6, Landroid/graphics/PorterDuffColorFilter;

    sget-object p7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p6, p4, p7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 371
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 373
    :cond_0
    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 375
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 376
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    invoke-virtual {p3, p0, v4, v4, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {p3, p1, v0, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 379
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method private setChildProperty(Landroid/view/View;)V
    .locals 8

    .line 198
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result v0

    .line 199
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v1

    .line 200
    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mNIOType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 201
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 202
    iget v6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIconWidth:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 203
    iget v6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIconHeight:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 204
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 205
    move-object v6, p1

    check-cast v6, Landroid/widget/ImageView;

    .line 206
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateShadowAndTintColor(Landroid/widget/ImageView;)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v2, :cond_1

    .line 209
    sget v7, Lcom/android/systemui/R$dimen;->notification_icon_only_image_margin_land:I

    goto :goto_1

    .line 210
    :cond_1
    sget v7, Lcom/android/systemui/R$dimen;->notification_icon_only_image_margin:I

    .line 208
    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 207
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 213
    :cond_2
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 214
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    .line 215
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v2, :cond_3

    .line 216
    sget v2, Lcom/android/systemui/R$dimen;->notification_icon_only_text_min_width_land:I

    goto :goto_2

    .line 217
    :cond_3
    sget v2, Lcom/android/systemui/R$dimen;->notification_icon_only_text_min_width:I

    .line 216
    :goto_2
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 215
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 218
    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextIconHeight:I

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v2, 0x10

    .line 219
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/android/systemui/R$dimen;->notification_icon_only_text_margin:I

    .line 221
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 220
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/4 v2, -0x2

    .line 222
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 223
    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextPadding:I

    invoke-virtual {v6, v2, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeNotiTextColor(Z)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v0, :cond_5

    .line 227
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsShadowShown:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_6

    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeShadowColor(Z)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 230
    invoke-virtual {v6, v2, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_8

    .line 233
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v0, :cond_8

    const v0, -0x50506

    goto :goto_6

    :cond_8
    const v0, -0xdadadb

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->lock_noti_icononly_ic_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v1, :cond_9

    .line 237
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getAdaptiveColorMode()I

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mColorTheme:I

    goto :goto_7

    .line 238
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColorWhiteBg:I

    goto :goto_7

    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColor:I

    .line 236
    :goto_7
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_b
    :goto_8
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {v6, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    :cond_c
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mpluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mpluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v1, "UpdateNIOScale"

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 248
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 251
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mpluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "UpdateNIOColor"

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 253
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method private setDimens()V
    .locals 4

    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mNIOType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 105
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 106
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_width_land:I

    goto :goto_1

    .line 107
    :cond_1
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_width_port:I

    .line 105
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIconWidth:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 109
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_height_land:I

    goto :goto_2

    .line 110
    :cond_2
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_height_port:I

    .line 108
    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIconHeight:I

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 112
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_text_height_land:I

    goto :goto_3

    .line 113
    :cond_3
    sget v3, Lcom/android/systemui/R$dimen;->notification_icon_only_text_height:I

    .line 111
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextIconHeight:I

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->small_notification_preview_touch_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 117
    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_only_text_size_land:I

    goto :goto_4

    .line 118
    :cond_5
    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_only_text_size:I

    .line 116
    :goto_4
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextSize:I

    .line 119
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsColorTheme:Z

    .line 120
    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_preview_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTextPadding:I

    return-void
.end method

.method private setNotificationCount()V
    .locals 6

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$plurals;->plural_notification_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateShadowAndTintColor(Landroid/widget/ImageView;)V
    .locals 14

    .line 259
    sget v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_FRESH_DRAWABLE:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v1

    .line 266
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result v2

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v13

    .line 268
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 273
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeColor(Z)I

    move-result v8

    if-nez v2, :cond_2

    .line 274
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->getOpenThemeShadowColor(Z)I

    move-result v9

    .line 275
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v13, :cond_3

    .line 277
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsShadowShown:Z

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 282
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 284
    :cond_4
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v13, :cond_9

    .line 286
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 290
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getAdaptiveColorMode()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mColorTheme:I

    goto :goto_2

    .line 291
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColorWhiteBg:I

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColor:I

    :goto_2
    move v8, v1

    .line 292
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eqz v0, :cond_8

    const v0, 0x4dfafafa    # 5.26344E8f

    goto :goto_3

    :cond_8
    const/high16 v0, 0x66000000

    :goto_3
    move v9, v0

    .line 295
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 297
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setChildProperty(Landroid/view/View;)V

    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setNotificationCount()V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setChildProperty(Landroid/view/View;)V

    .line 159
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setNotificationCount()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->open_theme_nio_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->open_theme_nio_shadow_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsShadowShown:Z

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setDimens()V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateChildProperty()V

    return-void
.end method

.method public isInContentArea(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchHandler:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchHandler:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setNotificationCount()V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mColorTheme:I

    return-void
.end method

.method public setNIOType(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mNIOType:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mNIOType:I

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setDimens()V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateChildProperty()V

    :cond_0
    return-void
.end method

.method public setOnTouchHandler(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mTouchHandler:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;

    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    .line 434
    const-class v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 435
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isTransformAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 444
    const-class v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 445
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isTransformAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    return-void
.end method

.method public setPluginLockStarManager(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mpluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method

.method public setRefArea(J)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    return-void
.end method

.method public setSelctedClockColor(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColor:I

    return-void
.end method

.method public setSelctedClockColorWhiteBG(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mClockSelectedColorWhiteBg:I

    return-void
.end method

.method public setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public updateChildProperty()V
    .locals 3

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setChildProperty(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateColorTheme(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsColorTheme:Z

    return-void
.end method

.method public updateWallpaperIcon(Landroid/app/SemWallpaperColors;Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 324
    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 329
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    if-eq p2, v1, :cond_3

    .line 330
    :cond_1
    sget-object p2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWallpaperIcon() white : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isColotheme : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsColorTheme:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Colotheme : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    .line 332
    invoke-virtual {p1, v2, v3}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mIsWallpaperWhite:Z

    .line 334
    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mRefArea:J

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->mColorTheme:I

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateChildProperty()V

    goto :goto_1

    .line 339
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateWallpaperIcon() wallpaperColors is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
