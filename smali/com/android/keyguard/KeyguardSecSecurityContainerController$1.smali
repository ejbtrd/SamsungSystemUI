.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainerController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
