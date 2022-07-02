.class public Lcom/android/systemui/popup/view/SimTrayProtectionDialog;
.super Ljava/lang/Object;
.source "SimTrayProtectionDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mBodyImage:Landroid/widget/ImageView;

.field private mBodyLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayWidth:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mStyle:I

.field private mType:I

.field private mWaterproof:Z


# direct methods
.method public static synthetic $r8$lambda$EKAKu74yJ2sj-LKZprTHsa7byDQ(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;IZI)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    .line 41
    iput p4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mType:I

    .line 42
    iput-boolean p5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mWaterproof:Z

    .line 43
    iput p6, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    .line 44
    new-instance p1, Lcom/android/systemui/popup/data/SimTrayProtectionData;

    invoke-direct {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->createDialog(Lcom/android/systemui/popup/data/SimTrayProtectionData;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    return p1
.end method

.method private createDialog(Lcom/android/systemui/popup/data/SimTrayProtectionData;)Landroid/app/AlertDialog;
    .locals 9

    .line 73
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyImage(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 77
    sget v4, Lcom/android/systemui/R$layout;->sim_card_tray_protection_dialog:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    sget v4, Lcom/android/systemui/R$id;->sim_card_tray_protection_dialog_body_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    sget v4, Lcom/android/systemui/R$id;->sim_card_tray_protection_dialog_body_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    invoke-virtual {p1, v7}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyImageHeight(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_protection_dialog_body_message_no_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    iget v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mType:I

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v4, v6, :cond_0

    .line 88
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageNoSimCard()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_protection_dialog_body_message_waterproof_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    iget-boolean v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mWaterproof:Z

    if-ne v4, v6, :cond_1

    .line 96
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageWaterProofSimCard()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_1
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_protection_dialog_body_message_inserting_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    iget v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    if-nez v4, :cond_2

    .line 104
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    invoke-virtual {p1, v6}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageInsertingSimCard(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v0, "SimTrayProtectionDialog"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show()V
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "SimTrayProtectionDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
