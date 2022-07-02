.class public interface abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule;
.super Ljava/lang/Object;
.source "StatusBarPhoneDependenciesModule.java"


# direct methods
.method public static provideNotificationGroupAlertTransferHelper(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
    .locals 1

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V

    return-object v0
.end method

.method public static provideSecStatusBarSetupFactory(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;
    .locals 11

    .line 69
    new-instance v10, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;-><init>(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)V

    return-object v10
.end method
