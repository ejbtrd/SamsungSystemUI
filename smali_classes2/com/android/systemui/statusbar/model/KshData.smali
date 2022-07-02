.class public Lcom/android/systemui/statusbar/model/KshData;
.super Ljava/lang/Object;
.source "KshData.java"


# instance fields
.field private mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mCategoryApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCameraToggleSupported:Z

.field private mIsMicToggleSupported:Z

.field private mIsPogoKeyboardConnected:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mKshGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sensor_privacy"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v0

    const-string/jumbo v1, "privacy"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v0, "camera_toggle_enabled"

    .line 60
    invoke-static {v1, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsCameraToggleSupported:Z

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mic_toggle_enabled"

    .line 62
    invoke-static {v1, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsMicToggleSupported:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/model/KshData;->loadResources(Landroid/content/Context;)V

    return-void
.end method

.method private getCurrentInputLanguage()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 565
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 567
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->ksh_no_default_app_item_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 538
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 542
    :cond_0
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 2

    const/4 v0, 0x0

    .line 553
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found, failed to get app icon"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KshData"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 558
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private isDesktopModeSupported()Z
    .locals 2

    .line 571
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_home:I

    .line 68
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_back:I

    .line 70
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 69
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_up:I

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x13

    .line 71
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_down:I

    .line 74
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x14

    .line 73
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_left:I

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x15

    .line 75
    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_right:I

    .line 78
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x16

    .line 77
    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_center:I

    .line 80
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x17

    .line 79
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0x38

    const-string v9, "."

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_tab:I

    .line 83
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x3d

    .line 82
    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_enter:I

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    .line 84
    invoke-virtual {v2, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_backspace:I

    .line 87
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x43

    .line 86
    invoke-virtual {v2, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_play_pause:I

    .line 89
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x55

    .line 88
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_stop:I

    .line 91
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x56

    .line 90
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_next:I

    .line 93
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x57

    .line 92
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_previous:I

    .line 95
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x58

    .line 94
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_rewind:I

    .line 97
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x59

    .line 96
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_fast_forward:I

    .line 99
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5a

    .line 98
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_page_up:I

    .line 101
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5c

    .line 100
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_page_down:I

    .line 103
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5d

    .line 102
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_button_template:I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "A"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 105
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x60

    .line 104
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "B"

    aput-object v15, v14, v16

    .line 107
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x61

    .line 106
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "C"

    aput-object v15, v14, v16

    .line 109
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x62

    .line 108
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "X"

    aput-object v15, v14, v16

    .line 111
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x63

    .line 110
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Y"

    aput-object v15, v14, v16

    .line 113
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x64

    .line 112
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Z"

    aput-object v15, v14, v16

    .line 115
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x65

    .line 114
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "L1"

    aput-object v15, v14, v16

    .line 117
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x66

    .line 116
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "R1"

    aput-object v15, v14, v16

    .line 119
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x67

    .line 118
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "L2"

    aput-object v15, v14, v16

    .line 121
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x68

    .line 120
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "R2"

    aput-object v15, v14, v16

    .line 123
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x69

    .line 122
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Start"

    aput-object v15, v14, v16

    .line 125
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x6c

    .line 124
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Select"

    aput-object v15, v14, v16

    .line 127
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x6d

    .line 126
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Mode"

    aput-object v15, v14, v16

    .line 129
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x6e

    .line 128
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_forward_del:I

    .line 131
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x70

    .line 130
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x6f

    const-string v14, "Esc"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x79

    const-string v14, "Break"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x74

    const-string v14, "Scroll Lock"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_move_home:I

    .line 136
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7a

    .line 135
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_move_end:I

    .line 138
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7b

    .line 137
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_insert:I

    .line 140
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7c

    .line 139
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x83

    const-string v14, "F1"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x84

    const-string v14, "F2"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x85

    const-string v14, "F3"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x86

    const-string v14, "F4"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x87

    const-string v14, "F5"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x88

    const-string v14, "F6"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x89

    const-string v14, "F7"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8a

    const-string v14, "F8"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8b

    const-string v14, "F9"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8c

    const-string v14, "F10"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8d

    const-string v14, "F11"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8e

    const-string v14, "F12"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_num_lock:I

    .line 154
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x8f

    .line 153
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_numpad_template:I

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "0"

    aput-object v15, v14, v16

    .line 156
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x90

    .line 155
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "1"

    aput-object v15, v14, v16

    .line 158
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x91

    .line 157
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "2"

    aput-object v15, v14, v16

    .line 160
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x92

    .line 159
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "3"

    aput-object v15, v14, v16

    .line 162
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x93

    .line 161
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "4"

    aput-object v15, v14, v16

    .line 164
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x94

    .line 163
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "5"

    aput-object v15, v14, v16

    .line 166
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x95

    .line 165
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "6"

    aput-object v15, v14, v16

    .line 168
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x96

    .line 167
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "7"

    aput-object v15, v14, v16

    .line 170
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x97

    .line 169
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "8"

    aput-object v15, v14, v16

    .line 172
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x98

    .line 171
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "9"

    aput-object v15, v14, v16

    .line 174
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x99

    .line 173
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "/"

    aput-object v15, v14, v16

    .line 176
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9a

    .line 175
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "*"

    aput-object v15, v14, v16

    .line 178
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9b

    .line 177
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "-"

    aput-object v15, v14, v16

    .line 180
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9c

    .line 179
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "+"

    aput-object v15, v14, v16

    .line 182
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9d

    .line 181
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v9, v14, v16

    .line 184
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x9e

    .line 183
    invoke-virtual {v2, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v14, ","

    aput-object v14, v9, v16

    .line 186
    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x9f

    .line 185
    invoke-virtual {v2, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v9, v13, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v16

    .line 188
    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa0

    .line 187
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, "="

    aput-object v9, v3, v16

    .line 191
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa1

    .line 190
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, "("

    aput-object v9, v3, v16

    .line 193
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa2

    .line 192
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, ")"

    aput-object v9, v3, v16

    .line 195
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa3

    .line 194
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd3

    const-string/jumbo v9, "\u534a\u89d2/\u5168\u89d2"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd4

    const-string/jumbo v9, "\u82f1\u6570"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd5

    const-string/jumbo v9, "\u7121\u5909\u63db"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd6

    const-string/jumbo v9, "\u5909\u63db"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd7

    const-string/jumbo v9, "\u304b\u306a"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_space:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x3e

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_prtscn:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x78

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_shift:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_lang:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xcc

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    const/16 v3, 0x1000

    const-string v9, "Ctrl"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    const/4 v3, 0x2

    const-string v9, "Alt"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    const-string v3, "Shift"

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    const-string v3, "Sym"

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    const/16 v3, 0x8

    const-string v4, "Fn"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_cmd:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->ksh_key_left_alt:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_back:I

    .line 216
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 215
    invoke-virtual {v2, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_enter:I

    .line 218
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_up:I

    .line 220
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 219
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_right:I

    .line 222
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 221
    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_down:I

    .line 224
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 223
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$drawable;->btkeyboard_btn_ic_shortcut_left:I

    .line 226
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    sget v2, Lcom/android/systemui/R$drawable;->btkeyboard_no_default_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    sget v2, Lcom/android/systemui/R$drawable;->btkeyboard_no_default_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    sget v2, Lcom/android/systemui/R$drawable;->btkeyboard_no_default_msg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, v0, Lcom/android/systemui/statusbar/model/KshData;->mCategoryApps:Ljava/util/HashMap;

    sget v1, Lcom/android/systemui/R$drawable;->btkeyboard_no_default_music:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBackupKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object p0
.end method

.method public getDefaultIcons()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    return-object p0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object p0
.end method

.method public getKshGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    return-object p0
.end method

.method public getModifierDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getModifierNames()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getSamsungAppShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 6

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.samsung.android.app.galaxyfinder"

    .line 365
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/high16 v2, 0x10000

    if-eqz v1, :cond_0

    .line 367
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_search:I

    .line 368
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.intent.category.APP_BROWSER"

    .line 374
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 376
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_browser:I

    .line 377
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 376
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "android.intent.category.APP_CALENDAR"

    .line 383
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 385
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_calendar:I

    .line 386
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x27

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 385
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "android.intent.category.APP_EMAIL"

    .line 392
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 394
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_email:I

    .line 395
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x21

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 394
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.intent.category.APP_MESSAGING"

    .line 401
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 403
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_messages:I

    .line 404
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 403
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "android.intent.category.APP_MUSIC"

    .line 410
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 412
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_music:I

    .line 413
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 412
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "android.intent.category.APP_MAPS"

    .line 419
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 421
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_maps:I

    .line 422
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x29

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 421
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "com.sec.android.app.myfiles"

    .line 428
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 430
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_my_files:I

    .line 431
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 430
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "android.intent.category.APP_CONTACTS"

    .line 437
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForIntentCategory(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 439
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_contacts:I

    .line 440
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 439
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v1, "com.samsung.android.bixby.agent"

    .line 446
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 448
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_bixby:I

    .line 449
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 448
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v1, "com.samsung.android.smartmirroring"

    .line 455
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 457
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_smart_view:I

    .line 458
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x35

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 457
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "com.android.settings"

    .line 464
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 466
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_settings:I

    .line 467
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x36

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 466
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v1, "com.samsung.android.app.tips"

    .line 473
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/model/KshData;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 475
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->ksh_group_applications_tips:I

    .line 476
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 475
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 487
    :cond_d
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->ksh_group_applications:I

    .line 488
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    return-object v1
.end method

.method public getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 8

    .line 264
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->ksh_group_system:I

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_home:I

    .line 267
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x42

    const/high16 v4, 0x10000

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 270
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_back:I

    .line 271
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 274
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_recents:I

    .line 275
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 278
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_close_current_app:I

    .line 279
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x86

    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 282
    sget-boolean v1, Lcom/android/systemui/BasicRune;->KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_show_emojis:I

    .line 284
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x38

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/model/KshData;->getCurrentInputLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ko"

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_show_hanja_input:I

    .line 290
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 295
    :cond_0
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_keyboard_shortcuts:I

    .line 296
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 300
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_notifications:I

    .line 301
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 305
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsCameraToggleSupported:Z

    const v2, 0x10001

    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->ksh_group_system_camera_access_on_off:I

    .line 307
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x32

    invoke-direct {v1, v3, v6, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 312
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsMicToggleSupported:Z

    if-eqz v1, :cond_2

    .line 313
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->ksh_group_system_microphone_access_on_off:I

    .line 314
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1d

    invoke-direct {v1, v3, v6, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 319
    :cond_2
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_lock_screen:I

    .line 320
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 324
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_capture_window:I

    .line 325
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x78

    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 329
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_switch_languages:I

    .line 330
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3e

    const/4 v6, 0x1

    invoke-direct {v1, v2, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 334
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x1000

    invoke-direct {v1, v2, v5, v7}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 339
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v6, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/model/KshData;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ksh_group_system_start_exit_dex_mode:I

    .line 346
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 351
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_4

    .line 352
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->ksh_group_system_wireless_keyboard_sharing:I

    .line 353
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xcc

    invoke-direct {v1, p0, v2, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    :cond_4
    return-object v0
.end method

.method public getSpecialCharacterDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getSpecialCharacterNames()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    return-object p0
.end method

.method public retrieveKeyCharacterMap(I)V
    .locals 5

    .line 494
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, -0x1

    .line 495
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-eq p1, v1, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    const/4 v2, 0x0

    .line 504
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 505
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void
.end method

.method public setKshGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    return-void
.end method

.method public setPogoKeyboardConnected(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mIsPogoKeyboardConnected:Z

    return-void
.end method
