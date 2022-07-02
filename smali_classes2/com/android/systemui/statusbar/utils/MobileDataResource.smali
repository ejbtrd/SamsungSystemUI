.class public final Lcom/android/systemui/statusbar/utils/MobileDataResource;
.super Ljava/lang/Object;
.source "MobileDataResource.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMobileDataResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MobileDataResource.kt\ncom/android/systemui/statusbar/utils/MobileDataResource\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1303:1\n37#2,2:1304\n*E\n*S KotlinDebug\n*F\n+ 1 MobileDataResource.kt\ncom/android/systemui/statusbar/utils/MobileDataResource\n*L\n1062#1,2:1304\n*E\n"
.end annotation


# instance fields
.field private mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mIndicatorRuneWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mOperatorInfraMediator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mTelephonyServiceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemPropertiesWrapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    return-void
.end method

.method private final getAIODataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_5

    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_2

    .line 278
    :cond_0
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 280
    :cond_1
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_2

    .line 281
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 283
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else if (mobileState.mmWave)\n                    TelephonyIcons.NR_5G_PLUS_ATT\n                else\n                    TelephonyIcons.NR_5G_ATT"

    .line 278
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 270
    :cond_3
    iget p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "updateAIOMobileIconGroup(): radioTech= "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileDataResource"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTech5Ge(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 272
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_E_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 274
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string/jumbo p1, "{\n                Log.d(TAG, \"updateAIOMobileIconGroup(): radioTech= ${mobileState.optionalRadioTech}\")\n                if (mTelephonyServiceManager.isRadioTech5Ge(mobileState.optionalRadioTech)) {\n                    TelephonyIcons.NR_5G_E_ATT\n                } else {\n                    TelephonyIcons.LTE\n                }\n            }"

    .line 270
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_5
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "E"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getATTDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 250
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "UNKNOWN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :pswitch_1
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 246
    :cond_0
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_1

    .line 247
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 249
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else if (mobileState.mmWave)\n                    TelephonyIcons.NR_5G_PLUS_ATT\n                else\n                    TelephonyIcons.NR_5G_ATT"

    .line 244
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :pswitch_2
    iget p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "updateATTMobileIconGroup(): radioTech= "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileDataResource"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTech5Ge(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 234
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_E_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 236
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string/jumbo p1, "{\n                Log.d(TAG, \"updateATTMobileIconGroup(): radioTech= ${mobileState.optionalRadioTech}\")\n                if (mTelephonyServiceManager.isRadioTech5Ge(mobileState.optionalRadioTech)) {\n                    TelephonyIcons.NR_5G_E_ATT\n                } else {\n                    TelephonyIcons.LTE_ATT\n                }\n            }"

    .line 232
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :pswitch_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 230
    :pswitch_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_ATT"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :pswitch_5
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "E"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 223
    :pswitch_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final getCHNDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 4

    const-string v0, "THREE_G_CHN"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 759
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "UNKNOWN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 744
    :pswitch_1
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    if-eqz p1, :cond_1

    .line 745
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONE_SHAPED_5G_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 746
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 748
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 752
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONE_SHAPED_5G_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 753
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 755
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (mobileState.fiveGAvailable) {\n                    if (mOperatorInfraMediator.isEnabled(USE_ONE_SHAPED_5G_ICON, slotId)) {\n                        TelephonyIcons.NR_5G_CHN\n                    } else {\n                        TelephonyIcons.NR_5G_AVAILABLE_CHN\n                    }\n\n                } else {\n                    if (mOperatorInfraMediator.isEnabled(USE_ONE_SHAPED_5G_ICON, slotId)) {\n                        TelephonyIcons.NR_5G_CHN\n                    } else {\n                        TelephonyIcons.NR_5G_CONNECTED_CHN\n                    }\n\n                }"

    .line 744
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 725
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_HSDPA_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 726
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 728
    :cond_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string p1, "if (mOperatorInfraMediator.isEnabled(SUPPORT_HSDPA_DATA_ICON, slotId)) {\n                    TelephonyIcons.H_PLUS_CHN\n                } else {\n                    TelephonyIcons.THREE_G_CHN\n                }"

    .line 725
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 737
    :pswitch_3
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isLteWideBand()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 740
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 738
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_3
    const-string p1, "if (mobileState.ca || mSystemPropertiesWrapper.isLteWideBand) {\n                    TelephonyIcons.FOUR_G_PLUS_CHN\n                } else {\n                    TelephonyIcons.FOUR_G_CHN\n                }"

    .line 737
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 719
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_HSDPA_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 720
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_4

    .line 722
    :cond_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_4
    const-string p1, "if (mOperatorInfraMediator.isEnabled(SUPPORT_HSDPA_DATA_ICON, slotId)) {\n                    TelephonyIcons.H_CHN\n                } else {\n                    TelephonyIcons.THREE_G_CHN\n                }"

    .line 719
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 735
    :pswitch_5
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 731
    :pswitch_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "ONE_X_CHN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 715
    :pswitch_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 713
    :pswitch_8
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->E_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "E_CHN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 742
    :pswitch_9
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G_CHN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 704
    :pswitch_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 705
    iget-object v3, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    aput-object v3, v2, v1

    .line 704
    invoke-interface {p1, v0, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p4, :cond_7

    .line 705
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz p1, :cond_7

    .line 706
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->hasDataService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 707
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 708
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_5

    .line 710
    :cond_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_5
    const-string/jumbo p1, "{\n                if (mOperatorInfraMediator.isEnabled(SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC, slotId,\n                        mobileState.cardOperator) && serviceState != null && mobileState.connected\n                    && !mTelephonyServiceManager.hasDataService(serviceState)\n                    && !mTelephonyServiceManager.isEmergencyOnly(serviceState)) {\n                    TelephonyIcons.TWO_G_CHN\n                } else {\n                    TelephonyIcons.UNKNOWN\n                }\n            }"

    .line 703
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final getCMCCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 5

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 662
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCHNDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_0

    .line 644
    :pswitch_0
    iget-object p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CMCC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p1, v0, :cond_0

    .line 645
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 647
    :cond_0
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 656
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    .line 657
    iget-object v4, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    aput-object v4, v3, v1

    .line 656
    invoke-interface {p1, v0, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 658
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 660
    :cond_1
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 650
    :cond_2
    iget-object p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CMCC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p1, v0, :cond_3

    .line 651
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 653
    :cond_3
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    .line 665
    iget-object v4, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    aput-object v4, v2, v1

    .line 664
    invoke-interface {v0, v3, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 666
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCsRegCDMA(Landroid/telephony/ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 667
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCallingState(Lcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 668
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "3G_CHN"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 669
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "4G_CHN"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 670
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "3G"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 671
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "4G"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 672
    :cond_4
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :cond_5
    const-string/jumbo p0, "mobileIconGroup"

    .line 674
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getCTCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 692
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCHNDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 691
    :cond_0
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_CHN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    :pswitch_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "TWO_G_CHN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getDisabledDataIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)I
    .locals 4

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1169
    iget-object p0, p3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "5G_UWB_VZW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 1179
    :cond_0
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_1

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_5G_VZW_UWB:I

    goto/16 :goto_1

    :cond_1
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_5G_UWB_VZW:I

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "5G_VZW"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 1177
    :cond_2
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_3

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_5G_VZW:I

    goto/16 :goto_1

    :cond_3
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_5G_VZW:I

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "4G_VZW"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    .line 1176
    :cond_4
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_5

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_4G_VZW:I

    goto/16 :goto_1

    :cond_5
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_4G_VZW:I

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "Unknown"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "H+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    .line 1174
    :cond_6
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_7

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_H_PLUS:I

    goto/16 :goto_1

    :cond_7
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_H_PLUS:I

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "3G"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 1172
    :cond_8
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_9

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_3G:I

    goto/16 :goto_1

    :cond_9
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_3G:I

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "1X"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    .line 1175
    :cond_a
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_b

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_1X:I

    goto/16 :goto_1

    :cond_b
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_1X:I

    goto :goto_1

    :sswitch_7
    const-string p1, "H"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    .line 1173
    :cond_c
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_d

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_H:I

    goto :goto_1

    :cond_d
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_H:I

    goto :goto_1

    :sswitch_8
    const-string p1, "G"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    .line 1180
    :cond_e
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_f

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_G:I

    goto :goto_1

    :cond_f
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_G:I

    goto :goto_1

    :sswitch_9
    const-string p1, "E"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    .line 1171
    :cond_10
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_11

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_E:I

    goto :goto_1

    :cond_11
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_E:I

    goto :goto_1

    :sswitch_a
    const-string p1, "5G_Connected"

    .line 1169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    .line 1178
    :cond_12
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_13

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_5G_CONNECTED:I

    goto :goto_1

    :cond_13
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_5G_CONNECTED:I

    goto :goto_1

    .line 1181
    :cond_14
    :goto_0
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_15

    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_G:I

    goto :goto_1

    :cond_15
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_CROSS_G:I

    :cond_16
    :goto_1
    return v2

    .line 1183
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x12

    if-eq p1, v0, :cond_18

    if-nez p1, :cond_19

    .line 1185
    :cond_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p1

    :cond_19
    if-eqz p1, :cond_1f

    const/16 p4, 0x14

    if-eq p1, p4, :cond_1d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1a

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1205
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_G:I

    goto :goto_2

    .line 1192
    :pswitch_0
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_H_PLUS:I

    goto :goto_2

    .line 1197
    :pswitch_1
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_4G:I

    goto :goto_2

    .line 1191
    :pswitch_2
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_H:I

    goto :goto_2

    .line 1196
    :cond_1a
    :pswitch_3
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_3G:I

    goto :goto_2

    .line 1188
    :cond_1b
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_3G:I

    goto :goto_2

    .line 1187
    :cond_1c
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_E:I

    goto :goto_2

    .line 1199
    :cond_1d
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    if-eqz p1, :cond_1e

    .line 1200
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONE_SHAPED_5G_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 1201
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_5G_AVAILABLE:I

    goto :goto_2

    .line 1203
    :cond_1e
    sget v2, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_5G:I

    :cond_1f
    :goto_2
    return v2

    .line 1208
    :cond_20
    iget-object p0, p3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.settingslib.SignalIcon.MobileIconGroup"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x209e2264 -> :sswitch_a
        0x45 -> :sswitch_9
        0x47 -> :sswitch_8
        0x48 -> :sswitch_7
        0x647 -> :sswitch_6
        0x674 -> :sswitch_5
        0x8e3 -> :sswitch_4
        0x523e442a -> :sswitch_3
        0x5cd10267 -> :sswitch_2
        0x5e85db06 -> :sswitch_1
        0x6774b2a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private final getHKTWDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 0

    .line 769
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    .line 770
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCallingState(Lcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 771
    iget-object p2, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object p3, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p2, p3, :cond_1

    .line 772
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCsRegCDMA(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 773
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "3G"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string p2, "4G"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 774
    :cond_0
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p0, "ONE_X"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private final getINUDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget v1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTechDC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->AIRTEL:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    .line 879
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_5

    :cond_1
    if-eqz v0, :cond_2

    .line 869
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 871
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string p1, "if (isDcState) {\n                    TelephonyIcons.FOUR_G\n                } else {\n                    TelephonyIcons.H_PLUS\n                }"

    .line 868
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 874
    :cond_3
    iget-object p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object p1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->RELIANCE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p0, p1, :cond_4

    .line 875
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 877
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_2
    const-string p1, "if (mobileState.cardOperator == SimOperator.RELIANCE) {\n                    TelephonyIcons.LTE\n                } else {\n                    TelephonyIcons.FOUR_G\n                }"

    .line 874
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 863
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 865
    :cond_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_3
    const-string p1, "if (isDcState) {\n                    TelephonyIcons.FOUR_G\n                } else {\n                    TelephonyIcons.H\n                }"

    .line 862
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 857
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_4

    .line 859
    :cond_8
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_4
    const-string p1, "if (isDcState) {\n                    TelephonyIcons.FOUR_G\n                } else {\n                    TelephonyIcons.THREE_G\n                }"

    .line 856
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-object p0
.end method

.method private final getKTTDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 630
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_3

    .line 626
    :pswitch_1
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    if-eqz p0, :cond_0

    .line 627
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 629
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (mobileState.fiveGAvailable)\n                    TelephonyIcons.NR_5G_AVAILABLE_KT\n                else\n                    TelephonyIcons.NR_5G_CONNECTED_KT"

    .line 626
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 620
    :pswitch_2
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isLteWideBand()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 623
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 621
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_2
    const-string p1, "if (mobileState.ca || mSystemPropertiesWrapper.isLteWideBand) {\n                    TelephonyIcons.LTE_PLUS_KT\n                } else {\n                    TelephonyIcons.LTE_KT\n                }"

    .line 620
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 618
    :pswitch_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_KT"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 608
    :pswitch_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "TWO_G_KT"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final getORGDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 788
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 787
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_PLUS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getOYADataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 553
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 552
    :cond_0
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getOYBDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 569
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 568
    :cond_0
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getOYCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 583
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 582
    :cond_0
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "H_PLUS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getSFRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 802
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 801
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_PLUS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "TWO_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getSPRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 430
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_0
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez p0, :cond_1

    .line 433
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_UC_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 435
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else if (mobileState.mmWave && !mobileState.roaming)\n                    TelephonyIcons.NR_5G_UC_TMO\n                else\n                    TelephonyIcons.NR_5G_SPR"

    .line 430
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getSPRFamilyDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final getSPRFamilyDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 455
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_SPR"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_0
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 454
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else\n                    TelephonyIcons.NR_5G_SPR"

    .line 451
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 449
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "UNKNOWN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "LTE_SPR"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->GSM_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "GSM_SPR"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private final getTMODataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 325
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "UNKNOWN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 311
    :pswitch_1
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 313
    :cond_0
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez p0, :cond_1

    .line 314
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_UC_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 315
    :cond_1
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-eqz p0, :cond_3

    if-eqz p4, :cond_3

    .line 317
    invoke-virtual {p4}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 318
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else if (mobileState.mmWave && !mobileState.roaming)\n                    TelephonyIcons.NR_5G_UC_TMO\n                else if (!(mobileState.roaming && (serviceState != null\n                            // In case of domestic roaming use TMO 5g icon\n                            && serviceState.getDataRoamingType() == ServiceState.ROAMING_TYPE_INTERNATIONAL)))\n                    TelephonyIcons.NR_5G_TMO\n                else\n                    TelephonyIcons.LTE_TMO"

    .line 311
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 309
    :pswitch_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "LTE_TMO"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 308
    :pswitch_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_TMO"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :pswitch_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G_TMO"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 302
    :pswitch_5
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-eqz p0, :cond_4

    .line 303
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 305
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_2
    const-string p1, "if (mobileState.roaming) {\n                    TelephonyIcons.THREE_G_TMO\n                } else {\n                    TelephonyIcons.FOUR_G_TMO\n                }"

    .line 302
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 297
    :pswitch_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "E"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 296
    :pswitch_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final getTURDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 828
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_HALF_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getUSAOpenDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USC_OPEN"

    .line 465
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x14

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_1

    .line 468
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 471
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_0
    const-string/jumbo p1, "{\n            when (networkType) {\n                TelephonyManager.NETWORK_TYPE_NR ->\n                    if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name)) {\n                        getDataIconGroup(networkType, slotId, mobileState)\n                    } else {\n                        TelephonyIcons.NR_5G_USC\n                    }\n                else -> getDataIconGroup(networkType, slotId, mobileState)\n            }\n        }"

    .line 465
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2
    const-string v1, "VZW_OPEN"

    .line 475
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_3

    .line 486
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 479
    :cond_3
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 480
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 481
    :cond_4
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_5

    .line 482
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_UWB_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 484
    :cond_5
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 477
    :cond_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string/jumbo p1, "{\n            when (networkType) {\n                TelephonyManager.NETWORK_TYPE_LTE -> TelephonyIcons.FOUR_G_VZW\n                TelephonyManager.NETWORK_TYPE_NR ->\n                    if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name)) {\n                        getDataIconGroup(networkType, slotId, mobileState)\n                    } else if (mobileState.mmWave) {\n                        TelephonyIcons.NR_5G_UWB_VZW\n                    } else {\n                        TelephonyIcons.NR_5G_VZW\n                    }\n                else -> getDataIconGroup(networkType, slotId, mobileState)\n            }\n        }"

    .line 475
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    const-string v1, "TMB_OPEN"

    .line 488
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "{\n            when (networkType) {\n                TelephonyManager.NETWORK_TYPE_NR ->\n                    if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name)) {\n                        getDataIconGroup(networkType, slotId, mobileState)\n                    } else if (!mobileState.roaming) {\n                        TelephonyIcons.NR_5G_TMO\n                    } else {\n                        TelephonyIcons.LTE\n                    }\n                else -> getDataIconGroup(networkType, slotId, mobileState)\n            }\n        }"

    if-nez v1, :cond_16

    const-string v1, "TMK_OPEN"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v1, "SPR_OPEN"

    .line 500
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-ne p1, v2, :cond_b

    .line 503
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 504
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_2

    .line 505
    :cond_9
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez p0, :cond_a

    .line 506
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 508
    :cond_a
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_SPR:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 510
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_2
    const-string/jumbo p1, "{\n            when (networkType) {\n                TelephonyManager.NETWORK_TYPE_NR ->\n                    if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name)) {\n                        getDataIconGroup(networkType, slotId, mobileState)\n                    } else if (!mobileState.roaming) {\n                        TelephonyIcons.NR_5G_SPR\n                    } else {\n                        TelephonyIcons.LTE_SPR\n                    }\n                else -> getDataIconGroup(networkType, slotId, mobileState)\n            }\n        }"

    .line 500
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    const-string v1, "ATT_OPEN"

    .line 512
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "AIO_OPEN"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    const-string v1, "DSH_OPEN"

    .line 524
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-ne p1, v2, :cond_10

    .line 527
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 528
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_3

    .line 529
    :cond_e
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez p0, :cond_f

    .line 530
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 532
    :cond_f
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 534
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    .line 524
    :goto_3
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 537
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_8

    :cond_12
    :goto_4
    if-ne p1, v2, :cond_15

    .line 515
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 516
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_5

    .line 517
    :cond_13
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_14

    .line 518
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_5

    .line 520
    :cond_14
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_5

    .line 522
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_5
    const-string/jumbo p1, "{\n            when (networkType) {\n                TelephonyManager.NETWORK_TYPE_NR ->\n                    if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name)) {\n                        getDataIconGroup(networkType, slotId, mobileState)\n                    } else if (mobileState.mmWave) {\n                        TelephonyIcons.NR_5G_PLUS_ATT\n                    } else {\n                        TelephonyIcons.NR_5G_ATT\n                    }\n                else -> getDataIconGroup(networkType, slotId, mobileState)\n            }\n        }"

    .line 512
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    :goto_6
    if-ne p1, v2, :cond_19

    .line 491
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 492
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_7

    .line 493
    :cond_17
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez p0, :cond_18

    .line 494
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_7

    .line 496
    :cond_18
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_7

    .line 498
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    .line 488
    :goto_7
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    return-object p0
.end method

.method private final getUSCCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 419
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 415
    :cond_0
    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 418
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (needToShow5GConnectedIconForDSDS(mobileState.cardOperator.name))\n                    getDataIconGroup(networkType, slotId, mobileState)\n                else\n                    TelephonyIcons.NR_5G_USC"

    .line 415
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_USC"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private final getVGRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 818
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 817
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "H"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private final getVIDDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 598
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 597
    :cond_0
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final needToShow5GConnectedIconForDSDS(Ljava/lang/String;)Z
    .locals 4

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-interface {p0, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 142
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_DATA_5G_DSDS:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 145
    invoke-static {p0, p1, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show5GConnectedIconForDSDS, iconBranding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cardOperator= "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataResource"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private final shouldHideDataIconForVoWifi(ILcom/android/settingslib/SignalIcon$MobileState;)Z
    .locals 0

    .line 1215
    iget-boolean p0, p2, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final update4GLTEMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    const/16 v0, 0xd

    if-ne p4, v0, :cond_1

    .line 924
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_LTE_LTN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 925
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final updateIUSMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    const/4 v0, 0x3

    if-eq p4, v0, :cond_3

    const/16 v0, 0xd

    if-eq p4, v0, :cond_2

    const/16 v0, 0xf

    if-eq p4, v0, :cond_1

    packed-switch p4, :pswitch_data_0

    .line 967
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 962
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 961
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_LTE_LTN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 966
    :cond_3
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final updateIconGroupForCarrierAggregationState(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Lcom/android/settingslib/SignalIcon$MobileState;II)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 995
    iget-object v5, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v3, v8}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "LTE_PLUS"

    const-string v8, "LTE"

    const-string v9, "4G"

    const/16 v10, 0xd

    if-ne v4, v10, :cond_4

    .line 997
    iget-boolean v11, v2, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    if-nez v11, :cond_0

    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isLteWideBand()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 998
    :cond_0
    iget-object v11, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 999
    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v11, v12, v3, v13}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1000
    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v11, v12, v3, v13}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1001
    iget-object v1, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 1002
    sget-object v11, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v12, v7, [Ljava/lang/Object;

    .line 1001
    invoke-interface {v1, v11, v3, v12}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string/jumbo v11, "{\n                    TelephonyIcons.FOUR_HALF_G\n                }"

    .line 1002
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_1
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string/jumbo v11, "{\n                    TelephonyIcons.FOUR_G_PLUS\n                }"

    .line 1004
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v11, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1008
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_3
    iget-object v11, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const-string v12, "4G_LTE_LTN"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "IUS"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1010
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v11, "FOUR_G_LTE_PLUS_LTN"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    :cond_4
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_AMX_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v11, v12, v3, v13}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "MobileDataResource"

    if-eqz v11, :cond_a

    .line 1015
    iget v11, v2, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v13, "updateIconGroupForCarrierAggregationState: optionalRadioTech = "

    .line 1014
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v10, :cond_a

    .line 1017
    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget v13, v2, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTechFourPointFiveGPlus(I)Z

    move-result v11

    const-string v13, "FOUR_G_PLUS"

    const-string v14, "FOUR_HALF_G_AMX"

    const-string v15, "CHL"

    if-eqz v11, :cond_7

    const-string v1, "TCE"

    .line 1019
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_5
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    :cond_6
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_PLUS_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v5, "FOUR_HALF_G_PLUS_AMX"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1023
    :cond_7
    iget-boolean v11, v2, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isLteWideBand()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1024
    iget-object v11, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget v10, v2, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTechFourPointFiveG(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1026
    :cond_8
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1027
    :cond_9
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    :cond_a
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v10, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_TEF_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v5, v10, v3, v11}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1034
    iget v5, v2, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v10, "updateIconGroupForCarrierAggregationState (TEF): optionalRadioTech = "

    .line 1033
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_d

    .line 1036
    iget-object v4, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    iget v2, v2, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isRadioTechFourPointFiveG(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1037
    iget-object v2, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1038
    iget-object v2, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1039
    iget-object v0, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 1040
    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v7, [Ljava/lang/Object;

    .line 1039
    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1041
    sget-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string/jumbo v1, "{\n                            TelephonyIcons.FOUR_HALF_G\n                        }"

    .line 1040
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1043
    :cond_b
    sget-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string/jumbo v1, "{\n                            TelephonyIcons.FOUR_G_PLUS\n                        }"

    .line 1042
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    goto :goto_3

    .line 1045
    :cond_c
    iget-object v0, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1046
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-object v1
.end method

.method private final updateLTEMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    const/16 v0, 0xd

    if-ne p4, v0, :cond_3

    .line 940
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isLteWideBand()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 944
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, "MobileDataResource"

    const-string p1, "LTE_WIDE_BAND!@!!"

    .line 941
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_2
    const-string p1, "if (mobileState.ca || mSystemPropertiesWrapper.isLteWideBand) {\n                    Log.d(TAG, \"LTE_WIDE_BAND!@!!\")\n                    TelephonyIcons.LTE_PLUS\n                } else {\n                    TelephonyIcons.LTE\n                }"

    .line 941
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 946
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private final updateMobileIconGroupExt(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;Ljava/lang/String;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, ","

    .line 1062
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object/from16 v4, p5

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 38
    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1062
    check-cast v3, [Ljava/lang/String;

    .line 1063
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v4

    .line 1065
    :goto_0
    array-length v7, v3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const-string v9, "UNKNOWN"

    const-string v10, "1xRTT"

    const-string v11, "UMTS"

    const-string v12, "GPRS"

    const-string v13, "EDGE"

    const-string v14, "LTE"

    if-ge v6, v7, :cond_15

    .line 1066
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    add-int/lit8 v15, v6, 0x1

    .line 1068
    aget-object v15, v3, v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "FOUR_G"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "4G_VZW"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "4G_LTE"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "4G_ATT"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "4GPLUS"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "3G_TMO"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "3GPLUS"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "LTE_TMO"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 1087
    :cond_0
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_8
    const-string v9, "LTE_ATT"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_1

    .line 1086
    :cond_1
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_9
    const-string v9, "LTEPLUS"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "4G_PLUS"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :sswitch_b
    const-string v9, "FOUR_G_LTE_LTN"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "3G_PLUS"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "TWO_G"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_1

    :sswitch_f
    const-string v9, "ONE_X"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_1

    :sswitch_10
    const-string v9, "4GLTE"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :sswitch_11
    const-string v9, "3G_KT"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_1

    .line 1083
    :cond_2
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    .line 1068
    :sswitch_13
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1

    :sswitch_14
    const-string v9, "LTE+"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_1

    .line 1084
    :cond_3
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_18
    const-string v9, "4G+"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :sswitch_19
    const-string v9, "3G+"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :sswitch_1a
    const-string v9, "4G"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_1

    .line 1069
    :cond_4
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_1b
    const-string v9, "3G"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1

    :sswitch_1c
    const-string v9, "2G"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_1

    .line 1082
    :cond_5
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_1d
    const-string v9, "G"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_1

    .line 1077
    :cond_6
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_1e
    const-string v9, "E"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_1

    .line 1076
    :cond_7
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_1f
    const-string v9, "THREE_G_TMO"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_1

    .line 1079
    :cond_8
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_20
    const-string v9, "THREE_G_KT"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_1

    .line 1081
    :cond_9
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_21
    const-string v9, "THREE_G"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1

    .line 1078
    :cond_a
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto/16 :goto_2

    :sswitch_22
    const-string v9, "THREE_G_PLUS"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_1

    .line 1080
    :cond_b
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_23
    const-string v9, "FOUR_G_PLUS"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_1

    .line 1073
    :cond_c
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_24
    const-string v9, "LTE_PLUS"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_1

    .line 1085
    :cond_d
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_25
    const-string v9, "FOUR_G_VZW"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_1

    .line 1072
    :cond_e
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_26
    const-string v9, "FOUR_G_TMO"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_1

    .line 1074
    :cond_f
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_27
    const-string v9, "FOUR_G_ATT"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_1

    .line 1071
    :cond_10
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_28
    const-string v9, "4G_LTE_LTN"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_1

    .line 1070
    :cond_11
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :sswitch_29
    const-string v9, "H_PLUS"

    .line 1068
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto :goto_1

    .line 1075
    :cond_12
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :goto_1
    move v8, v4

    :cond_13
    :goto_2
    if-eqz v8, :cond_14

    .line 1092
    aget-object v8, v3, v6

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x12

    if-ne v1, v3, :cond_16

    .line 1098
    iget-object v3, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    move-object/from16 v6, p4

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result v3

    goto :goto_3

    :cond_16
    move v3, v1

    :goto_3
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v9, "default"

    goto :goto_4

    :pswitch_1
    const-string v9, "TD_SCDMA"

    goto :goto_4

    :pswitch_2
    const-string v9, "HSPAP"

    goto :goto_4

    :pswitch_3
    const-string v9, "EHRPD"

    goto :goto_4

    :pswitch_4
    move-object v9, v14

    goto :goto_4

    :pswitch_5
    const-string v9, "EVDO_B"

    goto :goto_4

    :pswitch_6
    const-string v9, "IDEN"

    goto :goto_4

    :pswitch_7
    const-string v9, "HSPA"

    goto :goto_4

    :pswitch_8
    const-string v9, "HSUPA"

    goto :goto_4

    :pswitch_9
    const-string v9, "HSDPA"

    goto :goto_4

    :pswitch_a
    move-object v9, v10

    goto :goto_4

    :pswitch_b
    const-string v9, "EVDO_A"

    goto :goto_4

    :pswitch_c
    const-string v9, "EVDO_0"

    goto :goto_4

    :pswitch_d
    const-string v9, "CDMA"

    goto :goto_4

    :pswitch_e
    move-object v9, v11

    goto :goto_4

    :pswitch_f
    move-object v9, v13

    goto :goto_4

    :pswitch_10
    move-object v9, v12

    .line 1119
    :goto_4
    :pswitch_11
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1120
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    .line 1122
    :cond_17
    invoke-virtual/range {p0 .. p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v3

    .line 1124
    :goto_5
    iget-object v5, v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LTE_WIDE_BAND_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v4, p3

    .line 1125
    invoke-direct {v0, v3, v4, v2, v1}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateIconGroupForCarrierAggregationState(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Lcom/android/settingslib/SignalIcon$MobileState;II)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v3

    :cond_18
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x7fc2d4cf -> :sswitch_29
        -0x6de13d68 -> :sswitch_28
        -0x5d18d9d0 -> :sswitch_27
        -0x5d18935b -> :sswitch_26
        -0x5d188a3e -> :sswitch_25
        -0x527c9b24 -> :sswitch_24
        -0x45fbac35 -> :sswitch_23
        -0x43c1e78d -> :sswitch_22
        -0x24f3ae3a -> :sswitch_21
        -0x215e817e -> :sswitch_20
        -0xa718d03 -> :sswitch_1f
        0x45 -> :sswitch_1e
        0x47 -> :sswitch_1d
        0x655 -> :sswitch_1c
        0x674 -> :sswitch_1b
        0x693 -> :sswitch_1a
        0xc837 -> :sswitch_19
        0xcbf8 -> :sswitch_18
        0x127bd -> :sswitch_17
        0x2065bd -> :sswitch_16
        0x217cea -> :sswitch_15
        0x23d00e -> :sswitch_14
        0x27cf17 -> :sswitch_13
        0x2ea4a8b -> :sswitch_12
        0x2f06314 -> :sswitch_11
        0x2fe344a -> :sswitch_10
        0x47dc49f -> :sswitch_f
        0x4c876f4 -> :sswitch_e
        0x8662085 -> :sswitch_d
        0x19d1382a -> :sswitch_c
        0x36c61073 -> :sswitch_b
        0x3d4c5bc6 -> :sswitch_a
        0x47a286d7 -> :sswitch_9
        0x47a92eff -> :sswitch_8
        0x47a97574 -> :sswitch_7
        0x5b15320e -> :sswitch_6
        0x5b1c20ab -> :sswitch_5
        0x5cca0aad -> :sswitch_4
        0x5cd0b2d5 -> :sswitch_3
        0x5cd0dc11 -> :sswitch_2
        0x5cd10267 -> :sswitch_1
        0x7bf45f6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updatePCTMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    const/16 v0, 0xd

    if-eq p4, v0, :cond_2

    const/16 v0, 0xf

    if-eq p4, v0, :cond_1

    .line 910
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    goto :goto_1

    .line 908
    :cond_1
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 909
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "FOUR_G_LTE_LTN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private final updateZTMMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 980
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p1

    :cond_0
    const/16 p4, 0x10

    if-ne p1, p4, :cond_1

    .line 982
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getCurrentDataIconGroup(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;Lcom/android/settingslib/SignalIcon$MobileState;I)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 6
    .param p1    # Landroid/telephony/TelephonyDisplayInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mobileState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    :goto_0
    move v1, p1

    .line 44
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, p4, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v3, ","

    invoke-static {v5, v3, v2, p1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v0, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateMobileIconGroupExt(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;Ljava/lang/String;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "TMB_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "ATT_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "DSH_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "USC_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "VZW_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "4GLTE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "AIO_OPEN"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "ZVV"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :sswitch_8
    const-string p1, "ZTM"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 77
    :cond_2
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateZTMMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_9
    const-string p1, "XAS"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "VZW"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getVZWDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_b
    const-string p1, "VMU"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_1

    :sswitch_c
    const-string p1, "VID"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    .line 69
    :cond_4
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getVIDDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_d
    const-string p1, "VGR"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    .line 94
    :cond_5
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getVGRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_e
    const-string p1, "USC"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    .line 61
    :cond_6
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getUSCCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_f
    const-string p1, "UNE"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_1

    :sswitch_10
    const-string p1, "TUR"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_1

    .line 98
    :cond_7
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getTURDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_11
    const-string p1, "TMK"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_1

    :sswitch_12
    const-string p1, "TMB"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_1

    :sswitch_13
    const-string p1, "TGY"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_1

    :sswitch_14
    const-string p1, "SPR"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    .line 62
    :cond_8
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getSPRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_15
    const-string p1, "SFR"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_1

    :sswitch_16
    const-string p1, "PCT"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_1

    .line 73
    :cond_9
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updatePCTMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_17
    const-string p1, "OYV"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_1

    :sswitch_18
    const-string p1, "OYC"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_1

    .line 68
    :cond_a
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getOYCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_19
    const-string p1, "OYB"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_1

    .line 67
    :cond_b
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getOYBDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_1a
    const-string p1, "OYA"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_1

    .line 66
    :cond_c
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getOYADataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_1b
    const-string p1, "MTR"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_1

    :sswitch_1c
    const-string p1, "MEO"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_1

    .line 93
    :cond_d
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getSFRDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_1d
    const-string p1, "LTE"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_1

    .line 75
    :cond_e
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateLTEMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_1e
    const-string p1, "KTT"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_1

    .line 81
    :cond_f
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getKTTDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_1f
    const-string p1, "JDI"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_1

    :sswitch_20
    const-string p1, "IUS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_1

    .line 76
    :cond_10
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateIUSMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_21
    const-string p1, "CTC"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_1

    .line 86
    :cond_11
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCTCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_22
    const-string p1, "CHU"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_1

    .line 87
    :cond_12
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCHNDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_23
    const-string p1, "CHM"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_1

    :sswitch_24
    const-string p1, "CHC"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_1

    .line 85
    :cond_13
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCMCCDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_25
    const-string p1, "CDR"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_1

    .line 74
    :cond_14
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->update4GLTEMobileIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_26
    const-string p1, "BST"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_1

    .line 63
    :cond_15
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getSPRFamilyDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_27
    const-string p1, "BRI"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_1

    .line 88
    :cond_16
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getHKTWDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_28
    const-string p1, "ATT"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_1

    .line 56
    :cond_17
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getATTDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    :sswitch_29
    const-string p1, "ASR"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_1

    .line 59
    :cond_18
    invoke-direct {p0, v1, p4, p3, p2}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getTMODataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    :sswitch_2a
    const-string p1, "AIO"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1

    .line 57
    :cond_19
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getAIODataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    :sswitch_2b
    const-string p1, "SPR_OPEN"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1

    :sswitch_2c
    const-string p1, "ORANGE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1

    .line 92
    :cond_1a
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getORGDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    :sswitch_2d
    const-string p1, "TMK_OPEN"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1

    .line 65
    :cond_1b
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getUSAOpenDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    :sswitch_2e
    const-string p1, "INU_4G"

    .line 52
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1

    .line 102
    :cond_1c
    invoke-direct {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getINUDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    goto :goto_2

    .line 106
    :goto_1
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    .line 109
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LTE_WIDE_BAND_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2, v0, p4, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "iconGroup"

    if-eqz p2, :cond_1d

    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->updateIconGroupForCarrierAggregationState(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Lcom/android/settingslib/SignalIcon$MobileState;II)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    .line 114
    :cond_1d
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7efb029e -> :sswitch_2e
        -0x7b822689 -> :sswitch_2d
        -0x748ee5d2 -> :sswitch_2c
        -0x38beb54c -> :sswitch_2b
        0xfd27 -> :sswitch_2a
        0xfe60 -> :sswitch_29
        0xfe81 -> :sswitch_28
        0x101f9 -> :sswitch_27
        0x10223 -> :sswitch_26
        0x10411 -> :sswitch_25
        0x1047e -> :sswitch_24
        0x10488 -> :sswitch_23
        0x10490 -> :sswitch_22
        0x105f2 -> :sswitch_21
        0x11ca7 -> :sswitch_20
        0x11e4f -> :sswitch_1f
        0x1240b -> :sswitch_1e
        0x127bd -> :sswitch_1d
        0x129b7 -> :sswitch_1c
        0x12b8b -> :sswitch_1b
        0x13397 -> :sswitch_1a
        0x13398 -> :sswitch_19
        0x13399 -> :sswitch_18
        0x133ac -> :sswitch_17
        0x134c1 -> :sswitch_16
        0x1405f -> :sswitch_15
        0x14195 -> :sswitch_14
        0x14446 -> :sswitch_13
        0x144e9 -> :sswitch_12
        0x144f2 -> :sswitch_11
        0x145f1 -> :sswitch_10
        0x148cc -> :sswitch_f
        0x14965 -> :sswitch_e
        0x14bc1 -> :sswitch_d
        0x14bf1 -> :sswitch_c
        0x14c7e -> :sswitch_b
        0x14e13 -> :sswitch_a
        0x1528a -> :sswitch_9
        0x15c53 -> :sswitch_8
        0x15c9a -> :sswitch_7
        0x201fa62 -> :sswitch_6
        0x2fe344a -> :sswitch_5
        0x186b5cf6 -> :sswitch_4
        0x1c1da4e4 -> :sswitch_3
        0x3eb1e530 -> :sswitch_2
        0x506ec148 -> :sswitch_1
        0x75223be0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getDataActivityIcon(Lcom/android/settingslib/SignalIcon$MobileState;I)I
    .locals 5
    .param p1    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.settingslib.SignalIcon.MobileIconGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->activityIconsSet:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1262
    :cond_0
    iget-boolean v2, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v2, :cond_4

    .line 1263
    iget-boolean v2, p1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v2, :cond_1

    iget-boolean v3, p1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    .line 1264
    aget v0, v0, v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 1266
    aget v0, v0, v2

    goto :goto_0

    .line 1267
    :cond_2
    iget-boolean v2, p1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 1268
    aget v0, v0, v2

    goto :goto_0

    .line 1270
    :cond_3
    aget v0, v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1273
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, p2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1274
    iget-boolean v2, p1, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    if-eqz v2, :cond_7

    .line 1275
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 1276
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v1, [Ljava/lang/Object;

    .line 1275
    invoke-interface {p0, v0, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1277
    iget-boolean p0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-eqz p0, :cond_5

    goto :goto_1

    .line 1280
    :cond_5
    sget v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_FORBIDDEN:I

    :cond_6
    :goto_1
    move v0, v1

    :cond_7
    return v0
.end method

.method public final getDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 3
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "mobileState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 212
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "UNKNOWN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 196
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONE_SHAPED_5G_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_5G_PLUS_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 198
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_0

    .line 199
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 201
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    if-eqz p1, :cond_2

    .line 205
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 206
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_5G_PLUS_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 207
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz p0, :cond_3

    .line 208
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 210
    :cond_3
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    const-string p1, "if (mOperatorInfraMediator.isEnabled(USE_ONE_SHAPED_5G_ICON, slotId)) {\n                    if (mOperatorInfraMediator.isEnabled(USE_5G_PLUS_ICON, slotId)\n                        && mobileState.mmWave) {\n                        TelephonyIcons.NR_5G_PLUS\n                    } else {\n                        TelephonyIcons.NR_5G    /*FIVE_G_ONE_SHAPED*/\n                    }\n                } else {\n                    if (mobileState.fiveGAvailable)\n                        TelephonyIcons.NR_5G_AVAILABLE\n                    else if (mOperatorInfraMediator.isEnabled(USE_5G_PLUS_ICON, slotId)\n                        && mobileState.mmWave)\n                        TelephonyIcons.NR_5G_PLUS_CONNECTED\n                    else\n                        TelephonyIcons.NR_5G_CONNECTED\n                }"

    .line 196
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 174
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_HSDPA_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 175
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 177
    :cond_4
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_1
    const-string p1, "if (mOperatorInfraMediator.isEnabled(SUPPORT_HSDPA_DATA_ICON, slotId)) {\n                    TelephonyIcons.H_PLUS\n                } else {\n                    TelephonyIcons.THREE_G\n                }"

    .line 174
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 184
    sget-object p3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v1, v0, [Ljava/lang/Object;

    .line 183
    invoke-interface {p1, p3, p2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 186
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 187
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 188
    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_4G_PLUS_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v0, [Ljava/lang/Object;

    .line 187
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 190
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 191
    :cond_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_2
    const-string/jumbo p1, "{\n                when {\n                    mOperatorInfraMediator.isEnabled(\n                        USE_LTE_INSTEAD_OF_4G,\n                        slotId\n                    ) -> TelephonyIcons.LTE\n                    mOperatorInfraMediator.isEnabled(\n                        USE_4G_PLUS_INSTEAD_OF_4G,\n                        slotId\n                    ) -> TelephonyIcons.FOUR_G_PLUS\n                    else -> TelephonyIcons.FOUR_G\n                }\n            }"

    .line 181
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 168
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_HSDPA_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 169
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 171
    :cond_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_3
    const-string p1, "if (mOperatorInfraMediator.isEnabled(SUPPORT_HSDPA_DATA_ICON, slotId)) {\n                    TelephonyIcons.H\n                } else {\n                    TelephonyIcons.THREE_G\n                }"

    .line 168
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 180
    :pswitch_5
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "ONE_X"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 164
    :pswitch_6
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "THREE_G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 158
    :pswitch_7
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "E"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 194
    :pswitch_8
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string p1, "G"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getDataTypeIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;ZZ)I
    .locals 4
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "mobileState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez v0, :cond_0

    if-eqz p6, :cond_1

    .line 1143
    :cond_0
    iget-object p6, p3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.settingslib.SignalIcon.MobileIconGroup"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget p6, p6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    goto :goto_0

    :cond_1
    move p6, v1

    .line 1145
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->shouldHideDataIconForVoWifi(ILcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p6, v1

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1149
    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    if-eqz v0, :cond_4

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CHINA_NATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, p2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-eqz v0, :cond_4

    if-nez p5, :cond_4

    .line 1152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDisabledDataIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)I

    move-result p6

    goto :goto_1

    .line 1155
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDisabledDataIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)I

    move-result p6

    :cond_4
    :goto_1
    return p6
.end method

.method public final getVZWDataIconGroup(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;
    .locals 2
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "mobileState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getVZWDataType(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 362
    :pswitch_0
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 354
    :pswitch_1
    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-eqz v0, :cond_1

    .line 355
    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->isUsingVZWSim(ILcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 358
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_UWB_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 360
    :cond_1
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 349
    :pswitch_2
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 352
    :pswitch_3
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 348
    :pswitch_4
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 351
    :pswitch_5
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 345
    :pswitch_6
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 339
    :pswitch_7
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 338
    :pswitch_8
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 337
    :pswitch_9
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 364
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", voLTECall:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->hasVolteCall()Z

    move-result p3

    .line 364
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", voiceNetTpe:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p3, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p3

    .line 364
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", dataNetType:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ine911:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->getIne911()Z

    move-result p1

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", emergencyCallbackMode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->getEmergencyCallbackMode()Z

    move-result p0

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataResource"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "dataIconGroup"

    .line 370
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getVZWDataType(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;)I
    .locals 5
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo p2, "mobileState"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->getEmergencyCallbackMode()Z

    move-result p2

    .line 381
    iget p3, p3, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    sget v0, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->CALL_STATE_IDLE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_0

    .line 382
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->hasVolteCall()Z

    move-result p3

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez p1, :cond_2

    if-nez p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCdmaVoiceNetwork(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    .line 386
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->getSvlte1x()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 388
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->getSvdo()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_4

    const/4 v4, 0x6

    if-eq p1, v4, :cond_4

    const/16 v4, 0xc

    if-eq p1, v4, :cond_4

    const/16 v4, 0xe

    if-ne p1, v4, :cond_5

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    .line 395
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isDataStateOutOfService(Landroid/telephony/ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 396
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCdmaVoiceNetwork(Landroid/telephony/ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz p3, :cond_8

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    const/16 p2, 0x12

    if-eq p1, p2, :cond_9

    if-eqz v1, :cond_a

    .line 401
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p1

    :cond_a
    return p1
.end method

.method public final isUsingVZWSim(ILcom/android/settingslib/SignalIcon$MobileState;)Z
    .locals 2
    .param p2    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "mobileState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_DATA_5G_DSDS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1297
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "VZW"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1299
    :cond_0
    iget-object p0, p2, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object p1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->VZW:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final shouldShowDisabledDataIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;Z)Z
    .locals 4
    .param p3    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "mobileState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "CHM"

    .line 1227
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "CHU"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const-string v0, "CHC"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "ZVV"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    const-string v0, "ZTM"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    const/16 v3, 0x12

    if-eqz v0, :cond_5

    .line 1228
    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz p2, :cond_c

    .line 1229
    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz p2, :cond_4

    .line 1230
    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-eqz p2, :cond_c

    if-ne p1, v3, :cond_c

    .line 1232
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-nez p0, :cond_c

    return v1

    :cond_5
    const-string v0, "TGY"

    .line 1235
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    const-string v0, "BRI"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_8

    .line 1236
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz p1, :cond_c

    .line 1237
    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p3, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez p1, :cond_c

    .line 1238
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-nez p0, :cond_c

    if-nez p5, :cond_c

    return v1

    :cond_8
    const-string p5, "VZW"

    .line 1242
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1243
    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz p2, :cond_c

    .line 1244
    :cond_9
    iget-boolean p2, p3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-nez p2, :cond_a

    .line 1245
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileDataResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isDataStateInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1246
    :cond_a
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz p0, :cond_b

    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz p0, :cond_b

    .line 1247
    iget-boolean p0, p3, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-eqz p0, :cond_c

    if-ne p1, v3, :cond_c

    :cond_b
    return v1

    :cond_c
    return v2
.end method
