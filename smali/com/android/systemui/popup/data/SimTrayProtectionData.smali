.class public Lcom/android/systemui/popup/data/SimTrayProtectionData;
.super Ljava/lang/Object;
.source "SimTrayProtectionData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private imageForLayerType()I
    .locals 0

    .line 57
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_stacked_dialog_animation:I

    return p0
.end method

.method private imageForNormalType()I
    .locals 0

    .line 53
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_normal_dialog_animation:I

    return p0
.end method


# virtual methods
.method public getBodyImage(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->imageForNormalType()I

    move-result p0

    return p0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->imageForLayerType()I

    move-result p0

    return p0
.end method

.method public getBodyImageHeight(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 62
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_0

    .line 63
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_body_image_height_folder:I

    goto :goto_0

    .line 64
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_body_image_height:I

    :goto_0
    return p0

    .line 66
    :cond_1
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_protection_dialog_body_image_height:I

    return p0
.end method

.method public getBodyMessageInsertingSimCard(I)I
    .locals 0

    .line 29
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_MODEL_TYPE_WINNER:Z

    if-eqz p0, :cond_0

    .line 30
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_inserting_sim_card_model_winner_type:I

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    .line 34
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_1

    .line 35
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_inserting_sim_card_normal_folder_type:I

    goto :goto_0

    .line 36
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_inserting_sim_card_normal_type:I

    :goto_0
    return p0

    .line 38
    :cond_2
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_3

    .line 39
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_inserting_sim_card_layer_folder_type:I

    goto :goto_1

    .line 40
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_inserting_sim_card_layer_type:I

    :goto_1
    return p0
.end method

.method public getBodyMessageNoSimCard()I
    .locals 0

    .line 19
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_no_sim_card:I

    return p0
.end method

.method public getBodyMessageWaterProofSimCard()I
    .locals 0

    .line 23
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 24
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_sim_sd_card_waterproof:I

    goto :goto_0

    .line 25
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_body_sim_card_waterproof:I

    :goto_0
    return p0
.end method

.method public getTitleMessage()I
    .locals 0

    .line 13
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 14
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_protection_dialog_title:I

    goto :goto_0

    .line 15
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_protection_dialog_title:I

    :goto_0
    return p0
.end method
