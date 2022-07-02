.class Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "FrontCoverContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentAdapter"
.end annotation


# instance fields
.field mIsConfirmView:Z

.field mLastAnimatedView:Landroid/view/View;

.field mTempViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 312
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 313
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    return-void
.end method


# virtual methods
.method public addViewModel(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 358
    new-instance p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    .line 359
    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$400(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Landroid/app/Presentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$700(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$800(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$500(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-result-object v6

    move-object v0, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;ZZLcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 361
    invoke-virtual {p2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->inflateView()Landroid/view/View;

    move-result-object p3

    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    .line 363
    invoke-virtual {p2, p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->setViewIndex(I)V

    .line 364
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object p2

    const-string v0, "confirm_dismiss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 365
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 366
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    .line 367
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$1000(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->setClickedViewVisibility(Z)V

    :cond_0
    return-object p3
.end method

.method public saveViewModelList()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setClickedViewVisibility(Z)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 333
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setConfirmViewState(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    return-void
.end method
