.class Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardVisibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$1;)V
    .locals 0

    .line 1851
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    return-void
.end method


# virtual methods
.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    .line 1862
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setHasBackdrop(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 1855
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1902(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 1856
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onLockModeChanged()V
    .locals 2

    .line 1868
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$2000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    .line 1870
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$2100(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1871
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$2102(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 1873
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlphaForKeyguard(ZZ)V

    :cond_0
    return-void
.end method
