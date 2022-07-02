.class Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;
.super Lcom/android/systemui/SimpleAsyncTask;
.source "IndicatorGardenPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GardenAsyncTask"
.end annotation


# instance fields
.field private mBackgroundJob:Ljava/lang/Runnable;

.field private mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

.field private mLayoutJob:Ljava/lang/Runnable;

.field private mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method public static synthetic $r8$lambda$3PEZSc_Ruvj_1ExpdUa5XBlOlcA(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5jZfJkBpbfVG9AzM8UjvHDM_NTU(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/SimpleAsyncTask;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 281
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mBackgroundJob:Ljava/lang/Runnable;

    .line 286
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mLayoutJob:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 290
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .line 301
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 303
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    return-void
.end method

.method public submitTask()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mBackgroundJob:Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mLayoutJob:Ljava/lang/Runnable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    return-void
.end method
