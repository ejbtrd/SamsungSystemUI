.class Lcom/android/systemui/qs/customize/SecQSCustomizer$4;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCustomizerAnimEnd()V
    .locals 4

    const-string v0, "SecQSCustomizer"

    const-string v1, "hideCustomizerAnimEnd"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 711
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 713
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CollapseAnimation mIsClosing ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v3, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isShown ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 715
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return-void
.end method

.method public showCustomizerAnimEnd()V
    .locals 2

    const-string v0, "SecQSCustomizer"

    const-string/jumbo v1, "showCustomizerAnimEnd"

    .line 699
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V

    .line 701
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method
