.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;
.super Landroid/os/Handler;
.source "KeyguardKnoxGuardViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$500(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$400(Lcom/android/keyguard/KeyguardKnoxGuardViewController;IJ)V

    :goto_0
    return-void
.end method
