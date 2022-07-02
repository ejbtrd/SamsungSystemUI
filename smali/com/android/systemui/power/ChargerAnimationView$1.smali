.class Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "Animation Cancel"

    .line 244
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$000(Lcom/android/systemui/power/ChargerAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$102(Lcom/android/systemui/power/ChargerAnimationView;Landroid/hardware/display/IDisplayManager;)Landroid/hardware/display/IDisplayManager;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "setChargerAnimation onAnimationCancel : setDisplayStateLimit(Display.STATE_UNKNOWN)"

    .line 251
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/hardware/display/IDisplayManager;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "setChargerAnimation onAnimationCancel : mDisplayManager is null!! ERROR case"

    .line 255
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 258
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string/jumbo v1, "setChargerAnimation onAnimationCancel Cancel : Now the AODpulgin called true, so call chargingAnimStarted(false)"

    .line 261
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$002(Lcom/android/systemui/power/ChargerAnimationView;Z)Z

    .line 263
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p0}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "Animation Ended"

    .line 216
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$000(Lcom/android/systemui/power/ChargerAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$102(Lcom/android/systemui/power/ChargerAnimationView;Landroid/hardware/display/IDisplayManager;)Landroid/hardware/display/IDisplayManager;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "setChargerAnimation onAnimationEnd : setDisplayStateLimit(Display.STATE_UNKNOWN)"

    .line 224
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/hardware/display/IDisplayManager;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "setChargerAnimation onAnimationEnd : mDisplayManager is null!! ERROR case"

    .line 228
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 232
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string/jumbo v1, "setChargerAnimation onAnimationEnd : Now the AODpulgin called true, so call chargingAnimStarted(false)"

    .line 235
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$002(Lcom/android/systemui/power/ChargerAnimationView;Z)Z

    .line 237
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 239
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p0}, Lcom/android/systemui/power/ChargerAnimationView;->access$400(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;->onChargerAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
