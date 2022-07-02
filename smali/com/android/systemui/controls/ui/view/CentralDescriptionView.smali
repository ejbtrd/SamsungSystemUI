.class public final Lcom/android/systemui/controls/ui/view/CentralDescriptionView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CentralDescriptionView.kt"


# instance fields
.field private final mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    new-instance p1, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;-><init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    return-void
.end method

.method private final getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :goto_0
    return-void
.end method
