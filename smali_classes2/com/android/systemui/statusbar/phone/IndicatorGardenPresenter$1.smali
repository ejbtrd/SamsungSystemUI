.class Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;
.super Ljava/lang/Object;
.source "IndicatorGardenPresenter.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$002(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Z)Z

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenDensityOrFontScaleChanged()V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$100(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$200(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$100(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$000(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->updateAlgorithmConfigNameAndSpecString(Landroid/content/Context;Z)V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$100(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->makeAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->access$202(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    :cond_1
    return-void
.end method
