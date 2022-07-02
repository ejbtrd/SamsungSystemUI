.class Lcom/android/systemui/statusbar/phone/PanelViewController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field final synthetic val$shouldSpringBack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->val$shouldSpringBack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 709
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 714
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->val$shouldSpringBack:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->mCancelled:Z

    if-nez p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$300(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    goto :goto_0

    .line 719
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->mCancelled:Z

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    .line 722
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandAnimating:Z

    .line 724
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 726
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$502(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 730
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$200(Lcom/android/systemui/statusbar/phone/PanelViewController;I)V

    return-void
.end method
