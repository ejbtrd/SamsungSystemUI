.class public final Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "KeyguardRotationControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRotationControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRotationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    .line 32
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2

    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    iput v1, v0, Landroid/os/Message;->what:I

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->access$getHandler$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->access$getHandler$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
