.class Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWallpaperEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    const-string p1, "KeyguardWallpaperEventHandler"

    const-string/jumbo p3, "onBiometricAuthenticated()"

    .line 172
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2d7

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-static {p0, p1, p2, p3, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    const-string p2, "KeyguardWallpaperEventHandler"

    const-string/jumbo v0, "onBiometricError()"

    .line 162
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2d8

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-static {p0, p1, p2, p3, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public onDlsViewModeChanged(I)V
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDlsViewModeChanged mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2dc

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyguardBouncerChanged(), bouncer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x2d4

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyguardVisibilityChanged(), showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x2d3

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onOccluded(Z)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOccluded(), occluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x2d5

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 2

    .line 189
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_FESTIVAL_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.festivalwallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.LAUNCH_FESTIVAL_WALLPAPER"

    .line 191
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.samsung.android.permission.SET_FESTIVAL_WALLPAPER"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnlocking()V
    .locals 3

    const-string v0, "KeyguardWallpaperEventHandler"

    const-string/jumbo v1, "onUnlocking()"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2d6

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitchComplete(), userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2d1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching(), userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x2d0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method
