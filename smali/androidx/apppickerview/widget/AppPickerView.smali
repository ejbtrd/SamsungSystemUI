.class public Landroidx/apppickerview/widget/AppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AppPickerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

.field private mContext:Landroid/content/Context;

.field private mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    .line 122
    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    .line 140
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    .line 142
    new-instance p1, Landroidx/apppickerview/widget/AppPickerIconLoader;

    iget-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/apppickerview/widget/AppPickerIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 358
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 359
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerIconLoader;->startIconLoaderThread()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 364
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerIconLoader;->stopIconLoaderThread()V

    .line 365
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 328
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    .line 330
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getActionButton()Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 342
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 345
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    return-void
.end method
