.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;,
        Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;,
        Lcom/android/systemui/assist/AssistManager$UiController;
    }
.end annotation


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field private mAssistPopupPositiveClicked:Z

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

.field private mAssistantMetaKeyDialog:Landroid/app/AlertDialog;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags:I

.field private mIsAssistAppAvailable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOrbController:Lcom/android/systemui/assist/AssistOrbController;

.field private final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field protected final mSysUiState:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiController:Lcom/android/systemui/assist/AssistManager$UiController;


# direct methods
.method public static synthetic $r8$lambda$-jSSBx7k6pVv1ob4Zrbo3tGHKo4(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$1(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3JDt56pQLNjyfgaYEL5gCQsv8nM(Lcom/android/systemui/assist/AssistManager;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$2(Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QSk7UyHK_tPpunoh_xA7oon_O7g(Lcom/android/systemui/assist/AssistManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UO8LDDqAnC5Yev33f64YU9_PDx4(Lcom/android/systemui/assist/AssistManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistantMetaKeyDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0VQd-nZx6zaibtkV10mF0-4H2I(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistManager;->lambda$setAssistantRole$4(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqlRS0hbR3rqEVoMrExtMwIMDFA(Lcom/android/systemui/assist/AssistManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistantMetaKeyDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    .line 211
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 213
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 214
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 215
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 216
    iput-object p5, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 217
    iput-object p10, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 219
    new-instance p1, Lcom/android/systemui/assist/AssistOrbController;

    invoke-direct {p1, p7, p2}, Lcom/android/systemui/assist/AssistOrbController;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mOrbController:Lcom/android/systemui/assist/AssistOrbController;

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    .line 223
    iput-object p9, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 225
    iput-object p8, p0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    .line 227
    new-instance p1, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p6, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbController;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mOrbController:Lcom/android/systemui/assist/AssistOrbController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistManager;)Landroid/view/LayoutInflater;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private addAssistanceAppItems(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 634
    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 635
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    const-string v8, ""

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v28, v8

    move-object v8, v0

    move v0, v9

    move-object/from16 v9, v28

    .line 644
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, " not found"

    const-string v13, "Failed to add assistance app "

    const-string v14, "AssistManager"

    if-ge v10, v11, :cond_3

    .line 645
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 646
    new-instance v7, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v7, v4, v15}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 647
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 649
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v17

    if-nez v17, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    :goto_1
    move-object/from16 v22, v6

    goto/16 :goto_4

    .line 656
    :cond_1
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 660
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v22, v6

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    goto :goto_2

    :cond_2
    move-object/from16 v22, v6

    :goto_2
    move/from16 v23, v0

    const/4 v6, 0x0

    .line 664
    :try_start_0
    invoke-virtual {v4, v15, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v6, 0x1

    .line 665
    invoke-virtual {v4, v15, v6}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 666
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    :goto_3
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v15, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 677
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v23

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v22

    goto/16 :goto_0

    .line 681
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ASSIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 683
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 684
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 685
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 687
    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto/16 :goto_7

    .line 690
    :cond_4
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 694
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    :cond_5
    move/from16 v16, v0

    const/4 v15, 0x0

    .line 698
    :try_start_1
    invoke-virtual {v4, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v15, 0x1

    .line 699
    invoke-virtual {v4, v11, v15}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 700
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 706
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_4
    move-exception v0

    .line 704
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_5
    move-exception v0

    .line 702
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    :goto_6
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v15, Landroid/content/ComponentName;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v27, 0x2

    move-object/from16 v22, v0

    move-object/from16 v23, v15

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    invoke-direct/range {v22 .. v27}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 711
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 715
    :cond_6
    new-instance v3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v4, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_remove_circle:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    iget-object v1, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->assistance_app_setting_item_none:I

    .line 716
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v27}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 715
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v0, :cond_7

    .line 719
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :cond_7
    return v0
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 1

    .line 453
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 2

    .line 770
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 771
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "AssistManager"

    const-string v0, "Unable to resolve default voice recognition service."

    .line 772
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private isMetaKey(Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    .line 808
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVoiceSessionRunning()Z
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setAssistantRole$4(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 782
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "AssistManager"

    if-eqz p1, :cond_0

    .line 783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "role success = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "role fail = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showAssistanceAppSettingAlertDialog$1(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    invoke-virtual {p2, p3}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->setSelectedItem(I)V

    .line 516
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 517
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$showAssistanceAppSettingAlertDialog$2(Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    .line 525
    iput-boolean p2, p0, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    .line 526
    iget-object p3, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v0, "AssistanceAppSettingAlreadySelected"

    invoke-static {p3, v0, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 527
    check-cast p1, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getSelectedItem()Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->setAssistanceAppSetting(Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V

    return-void
.end method

.method private synthetic lambda$showAssistanceAppSettingAlertDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 530
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    .line 531
    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    if-nez p0, :cond_0

    const-string p0, "980"

    const-string p1, "9802"

    .line 532
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAssistantMetaKeyDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 819
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistantSettingActivity()V

    return-void
.end method

.method private synthetic lambda$showAssistantMetaKeyDialog$6(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 821
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistantMetaKeyDialog:Landroid/app/AlertDialog;

    .line 822
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string p1, "AssistanceMetaKeyPressed"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setAssistanceAppSetting(Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V
    .locals 5

    .line 732
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppType()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move-object p1, v2

    move-object v1, p1

    move-object v3, v1

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 744
    new-instance v3, Landroid/content/ComponentName;

    .line 745
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceVoiceInteractionService()Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    move-object p1, v1

    goto :goto_0

    .line 738
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object p1

    const-string v1, "None"

    move-object v3, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, p1

    .line 761
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/assist/AssistManager;->setAssistantRole(Ljava/lang/String;)V

    .line 762
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setAssistant(Ljava/lang/String;)V

    .line 763
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setVoiceInteractionServiceAssistant(Ljava/lang/String;)V

    .line 764
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v3}, Lcom/android/systemui/util/SettingsHelper;->setVoiceRecognitionService(Ljava/lang/String;)V

    const-string p0, "980"

    const-string p1, "9801"

    .line 765
    invoke-static {p0, p1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAssistantRole(Ljava/lang/String;)V
    .locals 7

    .line 781
    new-instance v6, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 789
    new-instance v0, Lcom/samsung/android/app/SemRoleManager;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    .line 794
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    const-string v1, "android.app.role.ASSISTANT"

    const/4 v3, 0x0

    move-object v2, p1

    .line 790
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/SemRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private shouldDisableAssist()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showAssistanceAppSettingAlertDialog()V
    .locals 9

    .line 493
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 495
    sget v1, Lcom/android/systemui/R$layout;->assistance_app_setting_alert_dialog_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 496
    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 497
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->assistance_app_setting_alert_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v3, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$layout;->assistance_app_setting_item:I

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 502
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 505
    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    .line 508
    :goto_0
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/assist/AssistManager;->addAssistanceAppItems(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v6

    .line 509
    invoke-virtual {v3, v6}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->setSelectedItem(I)V

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current assistance app - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " package name - "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " defaultItem - "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AssistManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v4, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    .line 520
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v1, v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 523
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 524
    new-instance v2, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    .line 535
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    .line 536
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 537
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const-string p0, "980"

    const-string v0, "9800"

    .line 539
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showAssistantMetaKeyDialog()V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistantMetaKeyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 815
    sget v1, Lcom/android/systemui/R$string;->assist_meta_key_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->assist_meta_key_dialog_description_1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->assist_meta_key_dialog_description_2:I

    .line 817
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 818
    sget v1, Lcom/android/systemui/R$string;->assist_meta_key_dialog_setting_button:I

    new-instance v2, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    new-instance v1, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistantMetaKeyDialog:Landroid/app/AlertDialog;

    .line 825
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 826
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistantMetaKeyDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v3, "assist_structure_enabled"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-nez v0, :cond_2

    return-void

    .line 397
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 401
    :cond_3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 404
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 409
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$anim;->search_launch_enter:I

    sget v1, Lcom/android/systemui/R$anim;->search_launch_exit:I

    invoke-static {p1, p2, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 411
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    new-instance p2, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Activity not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 1

    .line 367
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    :cond_0
    if-eqz p3, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    return-void
.end method


# virtual methods
.method public getAssistInfoForUser(I)Landroid/content/ComponentName;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public hideAssist()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    return-void
.end method

.method protected logStartAssistLegacy(II)V
    .locals 2

    .line 475
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6b4

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 477
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 475
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1}, Lcom/android/systemui/assist/AssistManager$UiController;->onGestureCompletion(F)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    return-void
.end method

.method public onLockscreenShown()V
    .locals 1

    .line 461
    new-instance v0, Lcom/android/systemui/assist/AssistManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$5;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    return-void
.end method

.method protected shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showAssistantSettingActivity()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ROLE_NAME"

    const-string v2, "android.app.role.ASSISTANT"

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 840
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public showDisclosure()V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 7

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->shouldDisableAssist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->isMetaKey(Landroid/os/Bundle;)Z

    move-result v0

    const-string v1, "AssistanceAppSettingAlreadySelected"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v3, "AssistanceMetaKeyPressed"

    .line 306
    invoke-static {v0, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistantMetaKeyDialog()V

    return-void

    .line 312
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    return-void

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mOrbController:Lcom/android/systemui/assist/AssistOrbController;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/assist/AssistOrbController;->showOrb(Landroid/content/ComponentName;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    .line 327
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mOrbController:Lcom/android/systemui/assist/AssistOrbController;

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x9c4

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/assist/AssistOrbController;->postHideDelayed(J)V

    :cond_6
    if-nez p1, :cond_7

    .line 331
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v3, "invocation_type"

    .line 333
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 334
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v3

    const-string v4, "invocation_phone_state"

    .line 335
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v6, "invocation_time_ms"

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 337
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    const/4 v5, 0x1

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 337
    invoke-virtual {v4, v2, v5, v0, v6}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/assist/AssistManager;->logStartAssistLegacy(II)V

    .line 343
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public toLoggingSubType(I)I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p0

    return p0
.end method

.method protected final toLoggingSubType(II)I
    .locals 0

    shl-int/lit8 p0, p1, 0x1

    or-int/lit8 p0, p0, 0x0

    shl-int/lit8 p1, p2, 0x4

    or-int/2addr p0, p1

    return p0
.end method
