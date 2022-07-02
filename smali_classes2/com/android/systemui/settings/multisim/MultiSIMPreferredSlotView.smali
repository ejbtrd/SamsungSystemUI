.class public Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;
.super Landroid/widget/LinearLayout;
.source "MultiSIMPreferredSlotView.java"

# interfaces
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;,
        Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;,
        Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;
    }
.end annotation


# static fields
.field private static final PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field private static final SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field private mChangedByDataButton:Z

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field private mCurrentOrientation:I

.field private mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mESIMIconArray:Landroid/content/res/TypedArray;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mNightModeOn:Z

.field private mPSimIconArray:Landroid/content/res/TypedArray;

.field private mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

.field private mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtonTextColor:I

.field private final mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 59
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    new-array v0, v4, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 61
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 96
    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 97
    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 930
    new-instance p2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->showSlotListPopupWindow(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/DualToneHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->getSimIcon(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    return-object p0
.end method

.method private getSimIcon(I)I
    .locals 2

    .line 224
    invoke-static {}, Lcom/android/systemui/Operator;->isSupportESim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->multisim_esim_icon_res_id_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->multisim_psim_icon_res_id_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private showSlotListPopupWindow(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->show(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    return-void
.end method

.method private updateResources()V
    .locals 4

    const-string v0, "MultiSIMPreferredSlotView"

    const-string/jumbo v1, "updateResources()"

    .line 914
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 916
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 918
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_preferred_slot_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 917
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_button_divider:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 922
    invoke-virtual {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 926
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    :cond_2
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 176
    iput v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 177
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 181
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    if-eq v3, v0, :cond_2

    .line 183
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 186
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 187
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v1, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->updateResources()V

    :cond_4
    return-void
.end method

.method public onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 108
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 110
    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->updateSlotListPopupContents()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 199
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 202
    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 210
    :cond_1
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 138
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getCurrentData()Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)Z

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings_Header:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    .line 156
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    sget v0, Lcom/android/systemui/R$id;->slot_button_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_text_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 164
    invoke-static {}, Lcom/android/systemui/Operator;->supportNetworkInfoAtMultisimBar()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 165
    :goto_1
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 166
    new-instance v4, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 167
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
