.class public Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;
.super Ljava/lang/Object;
.source "SamsungLightBarControlHelper.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mModel:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method


# virtual methods
.method public getDumpString()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->getDumpString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "null"

    :goto_0
    return-object p0
.end method

.method public getFontColorOfLockIndicator()I
    .locals 3

    .line 86
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    const/high16 v1, -0x4d000000

    const v2, -0x12000001

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->needDarkFontOfLockIndicator()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->needGrayLockIndicatorIcons()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 89
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getLockIndicatorIconsColor()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->needDarkFontOfLockIndicator()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public needDarkFontOfLockIndicator()Z
    .locals 5

    .line 66
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getLockIndicatorIconsColor()I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-wide/16 v3, 0x10

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZZ)V
    .locals 2

    .line 101
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onStatusBarAppearanceChanged() -"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  sbModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", statusBarMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", barState:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", isKeyguardShowing:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", navbarColorManagedByIme:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", stackAppearancesChanged:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p2, ", ("

    .line 110
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    if-eqz p4, :cond_0

    .line 113
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecLightBarControlHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setLightStatusBarFlag(Z)V
    .locals 0

    .line 138
    const-class p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setLightKeyguardStatusBarFlag(Z)V

    return-void
.end method

.method public updateStatusModel(Ljava/lang/String;IIII)V
    .locals 7

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->needDarkFontOfLockIndicator()Z

    move-result v5

    .line 127
    new-instance v6, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;-><init>(IIIIZ)V

    .line 128
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->isEqual(Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 129
    :cond_0
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateStatus("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->mModel:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlModel;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecLightBarControlHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
