.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EdgeLightingStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorListAdapter"
.end annotation


# instance fields
.field private mAreDisabledAll:Z

.field mOnColorClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 2

    .line 1139
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 1140
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 1137
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 1239
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    .line 1142
    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    return-void
.end method

.method private createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1235
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->lighting_style_color_item_holder:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1151
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleDefaultColorCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

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
    .locals 7

    if-nez p2, :cond_0

    .line 1185
    invoke-direct {p0, p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1187
    new-instance p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    invoke-direct {p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;-><init>()V

    .line 1188
    sget v0, Lcom/android/systemui/R$id;->icon_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 1189
    sget v0, Lcom/android/systemui/R$id;->color_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    .line 1190
    sget v0, Lcom/android/systemui/R$id;->color_select_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    .line 1191
    sget v0, Lcom/android/systemui/R$id;->color_out_ring:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->outRing:Landroid/widget/ImageView;

    .line 1193
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    .line 1198
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1200
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleDefaultColorCount()I

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 1201
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    sget v4, Lcom/android/systemui/R$drawable;->edge_lighting_setting_color_select:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1202
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v4, Lcom/android/systemui/R$string;->color_picker:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v4, Lcom/android/systemui/R$drawable;->lighting_style_color_item_icon_bg:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1207
    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v5, p1, 0x3

    invoke-static {v4, v5, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result v4

    .line 1208
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1209
    iget-object v4, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1210
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1212
    :goto_1
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-boolean v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    if-eqz v4, :cond_2

    const v4, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1215
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-eq v1, p1, :cond_4

    .line 1216
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleDefaultColorCount()I

    move-result v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 1217
    invoke-static {v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 1222
    :cond_3
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1223
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->outRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1224
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_color_not_selected_tts:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1218
    :cond_4
    :goto_3
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    iget-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->outRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_color_selected_tts:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, " "

    .line 1226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    add-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColorName(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    if-eqz v1, :cond_5

    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    :goto_5
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object p0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V

    .line 1167
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 1146
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    return-void
.end method
