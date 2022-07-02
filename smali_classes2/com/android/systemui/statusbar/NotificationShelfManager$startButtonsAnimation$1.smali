.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationShelfManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->$show:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 128
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "_a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "_a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$getMNotiSettingButton$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$getMNotiSettingButton$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->$show:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$getMNotiSettingButton$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
