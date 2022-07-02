.class public Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mActionButton:Landroid/widget/ImageButton;

.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mCheckBox:Landroid/widget/CheckBox;

.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# virtual methods
.method public getActionButton()Landroid/widget/ImageButton;
    .locals 0

    .line 607
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getAppIcon()Landroid/widget/ImageView;
    .locals 0

    .line 571
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    .line 591
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getItem()Landroid/view/View;
    .locals 0

    .line 611
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 603
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method
