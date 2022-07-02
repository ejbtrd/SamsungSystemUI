.class Lcom/android/systemui/statusbar/phone/ScrimController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1301
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 1302
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAnimationEnd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrimController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1314
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1315
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1400(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 1317
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1500(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1320
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1600(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/scrim/ScrimView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1321
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    .line 1322
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1700(Lcom/android/systemui/statusbar/phone/ScrimController;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onAodTransitionEnd()V

    goto :goto_0

    .line 1323
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 1324
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1600(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/scrim/ScrimView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1800(Lcom/android/systemui/statusbar/phone/ScrimController;F)V

    :cond_2
    :goto_0
    return-void
.end method
