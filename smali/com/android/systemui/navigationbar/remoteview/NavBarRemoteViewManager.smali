.class public Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "NavBarRemoteViewManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mIsNavbarCanMove:Z

.field private mLeftContainer:Landroid/widget/LinearLayout;

.field private mLeftViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;",
            ">;"
        }
    .end annotation
.end field

.field private mRightContainer:Landroid/widget/LinearLayout;

.field private mRightViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6B0ZhYtbGSam6E3SDs-41cj3md8(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$isGameMode$6(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JT95RShVB4IQqjzYfIda7wh78Cw(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$isGameMode$8(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MgxAYl-NFl0EELjAzf93nujlq_4(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$2(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O2HQVlRkirju4PWiuDD00IzZ31A(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$4(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$blwGB3GqYg5UL9Ywfg3WBgdVrI0(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$5(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dmRUwIX0NbZgC_XTV4A2uWMu-wQ(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$isGameMode$7(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iSksjtYb-11hlDvOytBAcuU4Y6o(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$1(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r070Jvrx-Rb7gMIQ16j5ykiC2nk(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$3(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r7ewx7MxHQUqf94i3EtnxZ1XOdI(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$0(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    .line 43
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private addRemoteViewToList(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)V
    .locals 1

    .line 183
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteViewToList(ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 188
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyRemoteIconTint(Landroid/view/View;)V
    .locals 4

    .line 160
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->navbar_remote_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->navbar_remote_icon_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 163
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    .line 164
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private getNavbarRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda8;

    .line 108
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda5;-><init>(I)V

    .line 113
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda1;

    .line 114
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda7;

    .line 117
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    .line 121
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda3;-><init>(I)V

    .line 122
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda2;

    .line 123
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static synthetic lambda$getNavbarRemoteView$0(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getNavbarRemoteView$1(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getNavbarRemoteView$2(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    return-object p1
.end method

.method private static synthetic lambda$getNavbarRemoteView$3(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getNavbarRemoteView$4(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getNavbarRemoteView$5(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    return-object p1
.end method

.method private static synthetic lambda$isGameMode$6(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)I
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isGameMode$7(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 0

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getPriority()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isGameMode$8(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 0

    return-object p1
.end method

.method private removeRemoteViewToList(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 202
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 203
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setRemoteViewPadding(Landroid/view/View;I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->samsung_navigation_bar_remoteview_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mIsNavbarCanMove:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    .line 100
    :cond_1
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public applyDarkIntensity(Ljava/lang/Float;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 150
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getDarkIntensity()Ljava/lang/Float;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    return-object p0
.end method

.method public isGameMode()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda6;

    .line 213
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    const/4 v1, -0x1

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda4;-><init>(I)V

    .line 217
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;

    .line 218
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.game.gametools"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftRemoteViewExist()Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isRightRemoteViewExist()Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setNavbarCanMove(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mIsNavbarCanMove:Z

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 2

    if-eqz p2, :cond_0

    .line 174
    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 176
    invoke-direct {p0, p3, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->addRemoteViewToList(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteViewToList(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 2

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 69
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    .line 72
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mIsNavbarCanMove:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p1, v0, :cond_1

    .line 73
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p2

    .line 74
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mIsNavbarCanMove:Z

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_2

    .line 75
    invoke-direct {p0, p3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p3

    :goto_1
    const/4 v0, 0x4

    if-eqz p2, :cond_3

    .line 78
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;I)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 81
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 82
    iget-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    if-eqz p3, :cond_4

    .line 86
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;I)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_3

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public updateRightRemoteViewVisibility(ZI)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->mIsNavbarCanMove:Z

    const/4 p1, 0x4

    if-nez p0, :cond_1

    .line 135
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
