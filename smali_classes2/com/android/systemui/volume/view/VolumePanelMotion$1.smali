.class Lcom/android/systemui/volume/view/VolumePanelMotion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanelMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/VolumePanelMotion;->startSubVolumePanelHideAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field final synthetic val$dismissRunnable:Ljava/lang/Runnable;

.field final synthetic val$hideBlurRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;->val$hideBlurRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;->val$hideBlurRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
