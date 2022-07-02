.class Lcom/android/keyguard/DualDarInnerLockScreenController$2;
.super Ljava/lang/Object;
.source "DualDarInnerLockScreenController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/DualDarInnerLockScreenController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$000(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$200(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$000(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$200(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
