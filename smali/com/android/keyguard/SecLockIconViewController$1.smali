.class Lcom/android/keyguard/SecLockIconViewController$1;
.super Ljava/lang/Object;
.source "SecLockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


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

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedLockStarEnabled(Z)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/SecLockIconViewController;->access$000(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecLockIconView;->setLockStarEnabled(Z)V

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/SecLockIconViewController;->access$100(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/SecLockIconView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/SecLockIconViewController;->access$200(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_0
    return-void
.end method
