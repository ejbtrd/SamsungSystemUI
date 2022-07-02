.class Lcom/android/systemui/qs/buttons/QSMoreButton$3;
.super Ljava/lang/Object;
.source "QSMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSMoreButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    iget-object p1, p1, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    iget-object p1, p1, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$000(Lcom/android/systemui/qs/buttons/QSMoreButton;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$200(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    .line 132
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1004"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
