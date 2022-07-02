.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;
.super Landroid/os/Handler;
.source "KeyguardSecSecurityContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Landroid/os/Looper;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1400(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    :goto_0
    return-void
.end method
