.class public Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;
.super Ljava/lang/Object;
.source "SamsungGrayBarControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static GRAY_INDICATOR_ICON_COLOR_URI:Ljava/lang/String;


# instance fields
.field private mHomeIndicatorIconsColor:I

.field private mIsGrayHomeIndicatorIcons:Z

.field private mIsGrayLockIndicatorIcons:Z

.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->DEBUG:Z

    const-string/jumbo v0, "need_dark_statusbar"

    .line 60
    sput-object v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->GRAY_INDICATOR_ICON_COLOR_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 70
    new-instance p2, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;

    .line 71
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->observe()V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getHomeIndicatorIconsColorFromDb(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mHomeIndicatorIconsColor:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->GRAY_INDICATOR_ICON_COLOR_URI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mHomeIndicatorIconsColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;Landroid/content/Context;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getHomeIndicatorIconsColorFromDb(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private getHomeIndicatorIconsColorFromDb(Landroid/content/Context;)I
    .locals 0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->GRAY_INDICATOR_ICON_COLOR_URI:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;
    .locals 1

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    return-object v0
.end method


# virtual methods
.method public applyGrayOnHomeIndicatorIcons(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 114
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mHomeIndicatorIconsColor:I

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mIsGrayHomeIndicatorIcons:Z

    return-void
.end method

.method public getGrayColorIntensity()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getHomeIndicatorIconsColor()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mHomeIndicatorIconsColor:I

    return p0
.end method

.method public getLockIndicatorIconsColor()I
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x10

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result p0

    return p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needGrayHomeIndicatorIcons()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mIsGrayHomeIndicatorIcons:Z

    return p0
.end method

.method public needGrayLockIndicatorIcons()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getLockIndicatorIconsColor()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateStatusBarAppearance(I)V
    .locals 3

    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateStatusBarAppearance() -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  appearance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mIsGrayLockIndicatorIcons:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mIsGrayLockIndicatorIcons:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mIsGrayLockIndicatorIcons:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mIsGrayHomeIndicatorIcons:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mIsGrayHomeIndicatorIcons:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mHomeIndicatorIconsColor:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->mHomeIndicatorIconsColor:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecGrayBarControlHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
