.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "EdgeLightingStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingStyleEffectAdapter"
.end annotation


# instance fields
.field private final mEdgeLightingStyleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;",
            ">;"
        }
    .end annotation
.end field

.field mEffectOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 986
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    .line 1105
    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEffectOnClickListener:Landroid/view/View$OnClickListener;

    .line 989
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->initializeEffectList()V

    return-void
.end method

.method private createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1096
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->lighting_style_item_holder:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private initializeEffectList()V
    .locals 3

    .line 993
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getStyleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 994
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->isSupportEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->isSupportEffectForRoutine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1057
    invoke-direct {p0, p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1059
    new-instance p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    invoke-direct {p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;-><init>()V

    .line 1060
    sget v0, Lcom/android/systemui/R$id;->item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    .line 1061
    sget v0, Lcom/android/systemui/R$id;->item_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->effectIv:Landroid/widget/ImageView;

    .line 1062
    sget v0, Lcom/android/systemui/R$id;->item_image_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    .line 1064
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    .line 1069
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iput-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 1071
    iget-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->effectIv:Landroid/widget/ImageView;

    iget-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object p1

    const-string v0, " "

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1081
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_color_selected_tts:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1085
    :cond_1
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->checkIv:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1087
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_color_not_selected_tts:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1090
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEffectOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v2, v4, v3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->getCount()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V

    .line 1034
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
