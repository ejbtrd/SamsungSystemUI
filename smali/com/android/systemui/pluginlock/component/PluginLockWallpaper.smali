.class public Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;
    }
.end annotation


# static fields
.field private static final CUSTOM_PACK:Ljava/lang/String; = "com.samsung.custompack"

.field private static final DLS_PACK:Ljava/lang/String; = "SamsungUX.DW.FreshP"

.field private static final KEY_PLUGIN_LOCK_WALLPAPER_TYPE:Ljava/lang/String; = "plugin_lock_wallpaper_type"

.field private static final KEY_PLUGIN_LOCK_WALLPAPER_TYPE_SUB:Ljava/lang/String; = "plugin_lock_wallpaper_type_sub"

.field public static final KEY_WALLPAPER_SOURCE:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field public static final KEY_WALLPAPER_SOURCE_SUB:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field private static final KEY_WALLPAPER_TYPE:Ljava/lang/String; = "lockscreen_wallpaper"

.field private static final KEY_WALLPAPER_TYPE_SUB:Ljava/lang/String; = "lockscreen_wallpaper_sub"

.field private static final STUB_PACK:Ljava/lang/String; = "SamsungUX.DW.Stub"

.field private static final TAG:Ljava/lang/String; = "PluginLockWallpaper"

.field private static final VALUE_TYPE_INFINITY:I = 0x0

.field private static final VALUE_TYPE_LOCK:I = 0x1

.field private static sDualDisplayPlugin:Z = false

.field private static sScreenType:I = 0x0

.field private static sScreenTypeChanged:Z = false


# instance fields
.field private mHasData:Z

.field private mHintUpdatedSkip:Z

.field private mRecoverRequestedScreen:I

.field private mUpdateStyle:I

.field private mWallpaperDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperRecoverType:I

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

.field private mWholeRecoverRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 3

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 84
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 93
    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-direct {p1, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$1;)V

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private backupWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    const/4 v0, 0x1

    .line 389
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    return-void
.end method

.method private backupWallpaperSource(I)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, -0x1

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperSource() backupSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 399
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    .line 401
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private backupWallpaperType()V
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    return-void
.end method

.method private backupWallpaperType(I)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "lockscreen_wallpaper"

    goto :goto_0

    :cond_0
    const-string v0, "lockscreen_wallpaper_sub"

    :goto_0
    const/4 v1, -0x1

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v1

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperType() backupType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const/4 v1, -0x3

    .line 381
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(II)V

    const/4 p1, 0x1

    .line 383
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p0, 0x0

    .line 512
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 519
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 520
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 521
    :cond_1
    instance-of p2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    .line 522
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 523
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 524
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 526
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    .line 527
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 528
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 529
    invoke-virtual {v0, v2, v2, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v1

    goto :goto_0

    .line 532
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBitmap() unsupported "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginLockWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MULTIPLE=(.*):tilt"

    .line 602
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 603
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 604
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 605
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "no_matched_pkg_name"

    return-object p0
.end method

.method private getScreenType()I
    .locals 2

    .line 591
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSingleDisplayRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 595
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private isCloneDisplayRequired()Z
    .locals 0

    .line 624
    sget-boolean p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSingleDisplayRequired()Z
    .locals 1

    .line 613
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isWholeRecoverRequired()Z
    .locals 1

    .line 628
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recoverWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    const/4 v0, 0x1

    .line 458
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    return-void
.end method

.method private recoverWallpaperSource(I)V
    .locals 3

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperSourceBackupValue(I)I

    move-result v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recoverWallpaperSource() backupWallpaperSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sub_display_lockscreen_wallpaper_transparency"

    .line 467
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private recoverWallpaperType()V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    return-void
.end method

.method private recoverWallpaperType(I)V
    .locals 3

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperTypeBackupValue(I)I

    move-result v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recoverWallpaperType() backupType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "lockscreen_wallpaper"

    goto :goto_0

    :cond_0
    const-string p1, "lockscreen_wallpaper_sub"

    :goto_0
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static setDualDisplayPlugin(Z)V
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDisplayPlugin() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sput-boolean p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    return-void
.end method

.method private setMultiPackWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    const/4 v0, 0x1

    .line 407
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    return-void
.end method

.method private setMultiPackWallpaperSource(I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, -0x1

    .line 412
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v2

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMultiPackWallpaperSource() currentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", screenType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginLockWallpaper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(II)V

    .line 419
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isPreloadedMultiPack()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSpecialEditionMultiPack()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isStubPack()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "setMultiPackWallpaperSource, custom"

    .line 429
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string/jumbo p1, "setMultiPackWallpaperSource, theme"

    .line 434
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string/jumbo p1, "setMultiPackWallpaperSource, preload"

    .line 424
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq v2, p1, :cond_4

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private setPluginWallpaperType(I)V
    .locals 3

    .line 538
    sget-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    const-string v1, "plugin_lock_wallpaper_type_sub"

    const-string v2, "plugin_lock_wallpaper_type"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSingleDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    .line 545
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_2

    .line 546
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static setScreenTypeChanged(I)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenTypeChanged() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 578
    sput-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "apply()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    .line 106
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fillData(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 237
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->hasData()Z

    move-result v2

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillData() screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wallpaperType:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", sourceType:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",source:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hasData:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "PluginLockWallpaper"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    .line 243
    invoke-virtual {v1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_1

    .line 261
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    .line 251
    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    .line 252
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 253
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getResourceId()I

    move-result p3

    if-ne p3, p2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_4

    .line 254
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "couldn\'t load bitmap:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {v1, p5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getUpdateStyle()I
    .locals 0

    .line 472
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginLockWallpaper"

    if-nez p0, :cond_0

    const-string p0, "getWallpaperPath() path: null"

    .line 479
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperPath() path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public getWallpaperType()I
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public getWallpaperUri()Landroid/net/Uri;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isCustomPack()Z
    .locals 2

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.custompack"

    .line 690
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 691
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCustomPack, ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDynamicWallpaper()Z
    .locals 3

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    .line 633
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 635
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDynamicWallpaper() screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ret:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDynamicWallpaper(I)Z
    .locals 3

    .line 641
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 644
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v2, -0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x1

    .line 646
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDynamicWallpaper() required:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", final: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMultiPack()Z
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreloadedMultiPack()Z
    .locals 4

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 662
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    .line 663
    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 665
    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 668
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPreloadedMultiPack, main:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isPreload"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginLockWallpaper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method public isRecoverRequiredWallpaper()Z
    .locals 3

    .line 714
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-nez v0, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, 0x1

    .line 715
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecoverRequiredWallpaper() type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isServiceWallpaper()Z
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 705
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v2, "SamsungUX.DW.FreshP"

    .line 706
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSpecialEditionMultiPack()Z
    .locals 3

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    .line 678
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigDefaultWallpaperStyle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 683
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 684
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSpecialEditionMultiPack, ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isStickyRecoverType()Z
    .locals 1

    .line 710
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStubPack()Z
    .locals 2

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "SamsungUX.DW.Stub"

    .line 697
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 698
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStubPack, ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVideoWallpaper()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recover()V
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recover() screenType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 132
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(IIII)V

    goto :goto_2

    .line 140
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    :goto_2
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset() reconnectReq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 152
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetData()V

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource()V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType()V

    goto :goto_0

    .line 159
    :cond_0
    sget v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    .line 160
    sget v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType(I)V

    .line 165
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetType()V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0, v3, v4, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    goto :goto_1

    .line 170
    :cond_1
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, v0, v3, v4, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(IIII)V

    :goto_1
    if-nez p1, :cond_2

    .line 174
    sget-boolean p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p1, :cond_2

    const-string/jumbo p1, "reset() onWallpaperUpdate will be called"

    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-interface {p1, v5}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 182
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    .line 183
    sput-boolean v5, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 184
    iput-boolean v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 185
    iput-boolean v5, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 186
    iput v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    return-void
.end method

.method public resetAll()V
    .locals 4

    const-string v0, "PluginLockWallpaper"

    const-string/jumbo v1, "resetAll()"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 194
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource()V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType()V

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 198
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "resetAll() onWallpaperUpdate will be called"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-interface {v0, v3}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    const-string v1, "WPaperChangedByDls"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    const-string v1, "WPaperChangedByDlsSub"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 210
    invoke-direct {p0, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    .line 211
    sput-boolean v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    .line 213
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 214
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 215
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 2

    .line 220
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInstanceState instanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    :cond_0
    return-void
.end method

.method public setRecoverRequestedScreen(I)V
    .locals 2

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecoverRequestedScreen() screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 568
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    :goto_0
    return-void
.end method

.method public setWallpaperHints(Landroid/app/SemWallpaperColors;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setHints(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-void
.end method

.method public setWholeRecoverRequired(Z)V
    .locals 0

    .line 560
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    return-void
.end method

.method public update(Landroid/content/Context;IILjava/lang/String;)V
    .locals 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update() wallpaperType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 270
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    .line 272
    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 273
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->hasData()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    .line 275
    invoke-virtual {v2, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    .line 276
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_7

    if-eq p3, v4, :cond_5

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackup(II)V

    goto :goto_0

    .line 314
    :cond_0
    sget p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackup(III)V

    :cond_1
    :goto_0
    move p1, v3

    goto/16 :goto_6

    .line 301
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 302
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p1, :cond_4

    .line 303
    invoke-virtual {p1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v4

    .line 306
    :goto_2
    invoke-virtual {v2, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_5
    const/4 p3, 0x0

    .line 290
    :try_start_0
    invoke-virtual {v2, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    .line 291
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 292
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getResourceId()I

    move-result p4

    if-ne p4, p3, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p4, :cond_1

    .line 294
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p1, v4

    goto :goto_6

    :catch_0
    move-exception p1

    move p3, v4

    goto :goto_3

    :catch_1
    move-exception p1

    move p3, v3

    .line 297
    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "couldn\'t load bitmap:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    goto :goto_6

    .line 282
    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 283
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v3

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v4

    .line 286
    :goto_5
    invoke-virtual {v2, p4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    .line 319
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 320
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperDynamicBackupValue(I)V

    goto :goto_7

    .line 322
    :cond_a
    sget p3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperDynamicBackupValue(II)V

    .line 325
    :goto_7
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 326
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType()V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource()V

    goto :goto_8

    .line 331
    :cond_c
    sget p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType(I)V

    .line 332
    sget p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    goto :goto_8

    .line 334
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isMultiPack()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 335
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource()V

    goto :goto_8

    .line 338
    :cond_f
    sget p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    .line 343
    :cond_10
    :goto_8
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p2, :cond_12

    sget-boolean p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    if-eqz p2, :cond_11

    if-eqz p1, :cond_12

    :cond_11
    const-string/jumbo p1, "update() onWallpaperUpdate will be called"

    .line 344
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-interface {p1, v3}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    .line 347
    :cond_12
    sget-boolean p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    if-eqz p1, :cond_13

    .line 348
    sput-boolean v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 349
    iput-boolean v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    goto :goto_9

    .line 351
    :cond_13
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    :goto_9
    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string/jumbo v1, "update()"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    .line 122
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    :cond_1
    return-void
.end method

.method public updateHint()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    if-nez v0, :cond_1

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHint() onWallpaperHintUpdate will be called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 361
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_1
    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    return-void
.end method
