.class Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object p0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 200
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p2}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$layout;->qs_detail_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$300(Lcom/android/systemui/qs/QSDetailItems;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x1020016

    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    .line 205
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1020006

    .line 206
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 208
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    :goto_1
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    if-eqz v5, :cond_3

    .line 215
    invoke-virtual {p2, v0, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    :cond_3
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_4

    .line 219
    invoke-virtual {v1, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    :cond_4
    iget v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    cmpl-float v5, v1, v7

    if-eqz v5, :cond_5

    .line 223
    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    :cond_5
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v1, :cond_6

    .line 227
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 229
    :cond_6
    iget v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :goto_2
    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 232
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 233
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v3}, Lcom/android/systemui/qs/QSDetailItems;->access$400(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v5}, Lcom/android/systemui/qs/QSDetailItems;->access$400(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v5

    invoke-virtual {v1, v0, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_7
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 238
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$drawable;->qs_detail_item_icon_background:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_8
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    if-eqz v5, :cond_9

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    :cond_9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 243
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    if-eqz v1, :cond_a

    .line 246
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$color;->qs_detail_active_item_name:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$integer;->qs_detail_item_title_progress_alpha:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_4

    .line 249
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v5, :cond_b

    sget v5, Lcom/android/systemui/R$color;->qs_detail_active_item_name:I

    goto :goto_3

    :cond_b
    sget v5, Lcom/android/systemui/R$color;->qs_detail_item_name:I

    :goto_3
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 250
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 253
    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_c

    move v7, v5

    goto :goto_5

    :cond_c
    const/4 v7, 0x2

    .line 255
    :goto_5
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v2, :cond_d

    move v7, v0

    goto :goto_6

    :cond_d
    move v7, v6

    .line 256
    :goto_6
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_e

    .line 257
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_e
    move-object v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v7, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v7, :cond_f

    sget v7, Lcom/android/systemui/R$color;->qs_detail_item_summary_active_text_color:I

    goto :goto_8

    :cond_f
    sget v7, Lcom/android/systemui/R$color;->qs_detail_item_summary_text_color:I

    :goto_8
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    if-nez v2, :cond_10

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_10
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    if-eqz v2, :cond_11

    const-string v2, "QSDetailItems"

    const-string v3, "getView(): item is disabled"

    .line 264
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 266
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->Hotspot_live_disable_title_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/android/systemui/R$color;->Hotspot_live_disable_summary_color:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p3}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$color;->Hotspot_live_disable_icon_tint_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_9

    .line 270
    :cond_11
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 273
    :goto_9
    new-instance p3, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x1020008

    .line 289
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 290
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz v1, :cond_12

    .line 291
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_cancel:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 294
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 302
    :cond_12
    iget p0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_13

    .line 303
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget p0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_a

    .line 307
    :cond_13
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    return-object p2
.end method
