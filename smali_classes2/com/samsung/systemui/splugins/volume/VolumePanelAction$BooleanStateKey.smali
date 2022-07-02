.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

.field public static final enum VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 104
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v1, "MEDIA_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 105
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v3, "SAFE_MEDIA_DEVICE_ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 106
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v5, "SAFE_MEDIA_PIN_DEVICE_ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 107
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v7, "DUAL_PLAY_MODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 108
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v9, "VOICE_CAPABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 109
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v11, "FROM_OUTSIDE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 110
    new-instance v11, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v13, "HAS_VIBRATOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 111
    new-instance v13, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v15, "ALL_SOUND_OFF"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 112
    new-instance v15, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v14, "SHOW_A11Y_STREAM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 113
    new-instance v14, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v12, "IS_ORIENTATION_CHANGED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 114
    new-instance v12, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v10, "IS_COVER_CLOSED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 115
    new-instance v10, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v8, "IS_DLNA_ENABLED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 116
    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "SUPPORT_TV_VOLUME_CONTROL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 117
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v4, "IS_AUDIO_DLNA_ENABLED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 118
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v2, "IS_ZEN_ENABLED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 119
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_ZEN_PRIORITY_ONLY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 120
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v4, "IS_ZEN_NONE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 121
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v2, "IS_LOCKSCREEN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 122
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_BT_SCO_ON"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 123
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v4, "FOLDER_STATE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 124
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v2, "IS_DENSITY_OR_FONT_CHANGED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 125
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_MULTI_SOUND_BT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 126
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v4, "IS_MEDIA_DEFAULT_OPTION_HIDE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MEDIA_DEFAULT_OPTION_HIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 127
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v4, "IS_CAPTION_COMPONENT_ENABLED"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 128
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_CAPTION_ENABLED"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 129
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_DISPLAY_TYPE_CHANGED"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 130
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "IS_FROM_KEY"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 131
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "SETUP_WIZARD_COMPLETE"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 133
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "VOLUME_SMART_VIEW_STREAM"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 134
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "VOLUME_WARNING_POPUP_WALLET_MINI"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 135
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "VOLUME_WARNING_POPUP_SIDE_VIEW"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 136
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "VOLUME_BUDS_TOGETHER"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 137
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const-string v6, "VOLUME_DUAL_AUDIO"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/16 v2, 0x21

    new-array v2, v2, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v4, v2, v0

    .line 103
    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;
    .locals 1

    .line 103
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;
    .locals 1

    .line 103
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    return-object v0
.end method
