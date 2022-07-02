.class public Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;
.super Ljava/lang/Object;
.source "SimTrayReverseProtectionDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mStyle:I

.field private mType:I

.field private mWaterproof:Z


# direct methods
.method public static synthetic $r8$lambda$oU2iVL4mh3EbBJt6BT849Bzfguw(Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;IZI)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    .line 35
    iput p4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mType:I

    .line 36
    iput-boolean p5, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mWaterproof:Z

    .line 37
    iput p6, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mStyle:I

    .line 38
    new-instance p1, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;

    invoke-direct {p1}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->createDialog(Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;)Landroid/app/AlertDialog;
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mStyle:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getBodyImage(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 70
    sget v4, Lcom/android/systemui/R$layout;->sim_card_tray_reverse_protection_dialog:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 72
    sget v4, Lcom/android/systemui/R$id;->sim_card_tray_reverse_protection_dialog_body_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mStyle:I

    invoke-virtual {p1, v8}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getBodyImageHeight(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_reverse_protection_dialog_body_message_no_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    iget v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mType:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getBodyMessageNoSimCard()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_reverse_protection_dialog_body_message_waterproof_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    iget-boolean v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mWaterproof:Z

    if-ne v4, v7, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getBodyMessageWaterProofSimCard()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_1
    sget v1, Lcom/android/systemui/R$id;->sim_card_tray_reverse_protection_dialog_body_message_inserting_sim_card:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mStyle:I

    invoke-virtual {p1, v6}, Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;->getBodyMessageInsertingSimCard(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

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

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->dismiss()V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayReverseProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "SimTrayReverseProtectionDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
