.class public Lcom/android/systemui/volume/util/DisplayManagerWrapper;
.super Ljava/lang/Object;
.source "DisplayManagerWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "DisplayManagerWrapper"

.field private static VOLUME_NONE:I = -0x1


# instance fields
.field private mCurSmartViewVol:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I


# direct methods
.method public static synthetic $r8$lambda$ZCmOqfeocYegCzDe8THDaeXezYo(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;IIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->lambda$registerDisplayVolumeListener$0(Ljava/util/function/Consumer;IIIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->VOLUME_NONE:I

    iput v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMinSmartViewVol:I

    .line 29
    iput v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMaxSmartViewVol:I

    const-string v0, "display"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method

.method private synthetic lambda$registerDisplayVolumeListener$0(Ljava/util/function/Consumer;IIIZ)V
    .locals 3

    .line 68
    iput p4, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mCurSmartViewVol:I

    .line 69
    iput p2, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMinSmartViewVol:I

    .line 70
    iput p3, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMaxSmartViewVol:I

    .line 71
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayVolumeChanged : curVol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", minVol = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maxVol = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDisplayCurrentVolume()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mCurSmartViewVol:I

    return p0
.end method

.method public getDisplayMaxVolume()I
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMaxSmartViewVol:I

    sget v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->VOLUME_NONE:I

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "mivo"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMaxSmartViewVol:I

    .line 94
    :cond_0
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMaxSmartViewVol:I

    return p0
.end method

.method public getDisplayMinVolume()I
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMinSmartViewVol:I

    sget v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->VOLUME_NONE:I

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "mavo"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMinSmartViewVol:I

    .line 87
    :cond_0
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mMinSmartViewVol:I

    return p0
.end method

.method public getFrontCameraDisplay()Landroid/view/Display;
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    .line 121
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFrontSubDisplay()Landroid/view/Display;
    .locals 2

    .line 111
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 113
    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmartViewDeviceName()Ljava/lang/String;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 45
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public isScreenSharing()Z
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidPlayerType()Z
    .locals 2

    .line 56
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public registerDisplayVolumeListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    return-void
.end method

.method public toggleWifiDisplayMute()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "muvo"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "mkev"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method
