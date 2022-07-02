.class Lcom/android/keyguard/KeyguardHostViewController$8;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostViewController;->appear(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$3000(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startAppearAnimation()V

    .line 583
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$3100(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    .line 586
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$8;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$3200(Lcom/android/keyguard/KeyguardHostViewController;)V

    :cond_0
    return v1
.end method
