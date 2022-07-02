.class Lcom/android/keyguard/SecLockIconViewController$4;
.super Ljava/lang/Object;
.source "SecLockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SecLockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$4;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$4;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/SecLockIconViewController;->access$600(Lcom/android/keyguard/SecLockIconViewController;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$4;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/SecLockIconViewController;->access$602(Lcom/android/keyguard/SecLockIconViewController;I)I

    .line 386
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$4;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/SecLockIconViewController;->access$700(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    :cond_0
    return-void
.end method
