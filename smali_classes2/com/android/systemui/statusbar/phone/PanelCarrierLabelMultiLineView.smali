.class public Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;
.super Landroid/widget/LinearLayout;
.source "PanelCarrierLabelMultiLineView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;


# instance fields
.field private mCommonView:Landroid/widget/TextView;

.field private mLayoutCarrierLabel:Landroid/widget/LinearLayout;

.field private mSlot1View:Landroid/widget/TextView;

.field private mSlot2View:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\n"

    .line 108
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p0, v0, :cond_2

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 112
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, -0x1

    .line 117
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p0, 0x2

    .line 122
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLines(I)V

    .line 127
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateFontSize()V
    .locals 4

    .line 143
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_text_size_multi_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .line 103
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_height_multi_line:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDumpText()Ljava/lang/String;
    .locals 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanelCarrierLabelMultiLineView"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    const-string v2, " : "

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_multi_sim:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mLayoutCarrierLabel:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_slot1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_slot2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_common:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->updateFontSize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->updateFontSize()V

    return-void
.end method

.method public setLabelSlot1Text(Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mLayoutCarrierLabel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelSlot2Text(Ljava/lang/String;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mLayoutCarrierLabel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mLayoutCarrierLabel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public updateTextColor(I)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot1View:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mSlot2View:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;->mCommonView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
