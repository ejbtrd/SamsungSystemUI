.class Lcom/android/keyguard/KeyguardRMMViewController$4;
.super Landroid/os/Handler;
.source "KeyguardRMMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRMMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/os/Looper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$4;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$4;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->access$400(Lcom/android/keyguard/KeyguardRMMViewController;I)V

    :cond_0
    return-void
.end method