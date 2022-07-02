.class Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;
.super Ljava/lang/Object;
.source "KeyguardSecUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 3

    .line 226
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    if-eq v0, v1, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged() state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsScreenOffInDexMode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_2
    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    .line 251
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 257
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz p1, :cond_2

    .line 258
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    :cond_2
    return-void
.end method
