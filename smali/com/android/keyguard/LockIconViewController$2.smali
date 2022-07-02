.class Lcom/android/keyguard/LockIconViewController$2;
.super Ljava/lang/Object;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$2;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$2;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/LockIconViewController;->access$302(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 392
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$2;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$2;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/LockIconViewController;->access$402(Lcom/android/keyguard/LockIconViewController;I)I

    .line 398
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$2;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method
