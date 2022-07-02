.class public Lcom/android/systemui/power/WirelessMisalignView;
.super Landroid/widget/RelativeLayout;
.source "WirelessMisalignView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCenterImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/android/systemui/power/WirelessMisalignListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTextContainerLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/WirelessMisalignView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/WirelessMisalignView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance p1, Lcom/android/systemui/power/WirelessMisalignView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/WirelessMisalignView$1;-><init>(Lcom/android/systemui/power/WirelessMisalignView;)V

    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/WirelessMisalignView;)Lcom/android/systemui/power/WirelessMisalignListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    return-object p0
.end method

.method private setAlignMode()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$drawable;->overlay_center_alignment_ok:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setMisalignMode()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$drawable;->overlay_center_alignment:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "PowerUI.WirelessMisalignView"

    const-string v0, "onClick : misalign view gone"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    invoke-interface {p0}, Lcom/android/systemui/power/WirelessMisalignListener;->onWirelessMisalignCompleted()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "PowerUI.WirelessMisalignView"

    const-string v1, "onFinishInflate"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget v0, Lcom/android/systemui/R$id;->misalign_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->center_align_image:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/android/systemui/R$id;->misalign_ok_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/WirelessMisalignView;->setAlignMode()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/WirelessMisalignView;->setMisalignMode()V

    :goto_0
    return-void
.end method

.method public setWirelessMisalignListener(Lcom/android/systemui/power/WirelessMisalignListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    return-void
.end method

.method protected setWirelessMisalignViewVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWirelessMisalignViewVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.WirelessMisalignView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
