.class public Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;
.super Ljava/lang/Object;
.source "SideCoverContentItemView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private final mVoiceAssistantMode:Z

.field private final mWhiteTheme:Z


# direct methods
.method public static synthetic $r8$lambda$GZez5FeHMtK5NWhQjQyctVbbsw0(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->lambda$setViewAttrs$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 36
    iput-boolean p5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mVoiceAssistantMode:Z

    .line 37
    iput-boolean p6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mWhiteTheme:Z

    return-void
.end method

.method private getDensityFromResolution(Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 87
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p1, 0x2d0

    if-ne p0, p1, :cond_0

    const/16 p0, 0x140

    return p0

    :cond_0
    const/16 p1, 0x438

    if-ne p0, p1, :cond_1

    const/16 p0, 0x1e0

    return p0

    :cond_1
    const/16 p0, 0x280

    return p0
.end method

.method private synthetic lambda$setViewAttrs$0(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    return-void
.end method


# virtual methods
.method public inflateView()Landroid/view/View;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 45
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 48
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setViewAttrs(Landroid/view/View;Z)V
    .locals 4

    .line 55
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 56
    invoke-direct {p0, p2}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->getDensityFromResolution(Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 60
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ge p2, v0, :cond_0

    const p2, 0x3f924dd3    # 1.143f

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const p2, 0x3f639581    # 0.889f

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 68
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {p2, v0}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v1, v2, :cond_4

    .line 72
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    sget v1, Lcom/android/systemui/R$drawable;->ic_sidecover_btn_power_off:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    sget v1, Lcom/android/systemui/R$drawable;->ic_sidecover_btn_restart:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 78
    new-instance p2, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "cover_text_direction"

    invoke-static {p2, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x43340000    # 180.0f

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 83
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
