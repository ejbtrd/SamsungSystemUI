.class public Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "KeyguardKnoxGuardViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController<",
        "Lcom/android/keyguard/KeyguardKnoxGuardView;",
        ">;"
    }
.end annotation


# static fields
.field private static numberOfAttemptsDone:I


# instance fields
.field private final mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private final mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mCustomerAppContainer:Landroid/widget/RelativeLayout;

.field private final mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mHandler:Landroid/os/Handler;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

.field private final mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMessageContainer:Landroid/widget/LinearLayout;

.field private final mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private final mOptionContainer:Landroid/widget/RelativeLayout;

.field private final mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mPhoneContainer:Landroid/widget/RelativeLayout;

.field private final mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mPinEditText:Landroid/widget/EditText;

.field private final mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private mSkipPin:Z

.field private mSkipSupport:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTopContainer:Landroid/widget/LinearLayout;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$DJNubhLxefH7qEA1PEw8I_5EIS8(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$onViewAttached$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrnwHemKp7srW4CcrFZ7JRlsY9w(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$setKnoxGuardInfo$7(Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4URM4Tpebw8bUuI-BaZh8GJLdU(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$setKnoxGuardInfo$6(Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLxxHIwKrzhGc7TW5kDsY0uSA84(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$setKnoxGuardInfo$5(Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OZlkCC-i6yRT_c7vdDnnQ2GvkAo(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$onViewAttached$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oyKrw_gkah6SYTFzlfb5pVneXo(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$esKVlfXrYO8GAvvR5F6JUZWXgNw(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$onViewAttached$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEMce8KPor8-Dz_BNcKh_89MsSI(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    return-void
.end method

.method public static synthetic $r8$lambda$yVGTlvu-81AseS-hcd-4p9c5L3U(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->lambda$onViewAttached$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 3

    move-object v0, p0

    .line 195
    invoke-direct/range {p0 .. p12}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    const/4 v1, 0x0

    .line 109
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 110
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x0

    .line 111
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    .line 112
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipSupport:Z

    .line 114
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 116
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 124
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 136
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 161
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 164
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Landroid/os/Handler;

    move-object v1, p11

    .line 199
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object/from16 v1, p13

    .line 200
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v1, p15

    .line 201
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v1, p14

    .line 202
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 203
    invoke-interface/range {p16 .. p16}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 204
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->top_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    .line 242
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->knox_guard_message_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    .line 243
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_knox_guard_company_name:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 244
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_knox_guard_lock_message:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 245
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_knox_guard_pin_view:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    .line 246
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_knox_pin_message:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 247
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_wifi_on_button:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 248
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_data_on_button:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 249
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->option_header:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 250
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->app_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 251
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->phone_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->app_header:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 253
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->phone_header:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 254
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->phone_sub_text:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 255
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->option_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    .line 256
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 257
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->app_image:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateTopContainer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 73
    sget v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setKnoxGuardInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardKnoxGuardViewController;IJ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->checkUnlockAttempts(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private checkUnlockAttempts(IJ)V
    .locals 7

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUnlockAttempts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardKnoxGuardView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 564
    :try_start_0
    new-instance p1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 p2, 0x3

    invoke-direct {p1, p2, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    .line 565
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-interface {p2, p3, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed KNOXGUARD LOCK clear!!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_1

    .line 573
    iget-wide v5, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long v2, v5, p2

    if-eqz v2, :cond_1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update lockTimeout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-wide p2, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 577
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget p3, p2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez p3, :cond_2

    iget-wide v1, p2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    if-lez p1, :cond_2

    .line 578
    rem-int p2, p1, p3

    if-nez p2, :cond_2

    .line 579
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 580
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide p2

    .line 581
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setFailedUnlockAttemptCount(II)I

    move-result p1

    sput p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 582
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    return-void

    .line 587
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateErrorMessage()V

    :goto_1
    return-void
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 832
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 833
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 834
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 835
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 837
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private getFailedUnlockAttemptCount(I)I
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 640
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 642
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 0

    .line 683
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method private getRemoteLockoutAttemptDeadline(I)J
    .locals 8

    .line 654
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v4, v2

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(Ljava/lang/String;JI)V

    :cond_2
    return-wide v4
.end method

.method private getShortcutIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 822
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->kg_knox_guard_contact_image_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 828
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->kg_knox_guard_contact_image_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 827
    invoke-direct {p0, v0, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method private isDataRoamingEnabled()Z
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_roaming"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isNetworkRoaming()Z
    .locals 5

    .line 842
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ril.currentplmn"

    .line 846
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "oversea"

    .line 850
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 851
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-nez v2, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkRoaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " currentplmn : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " oversea : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardKnoxGuardView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->onUserInput()V

    .line 280
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$onViewAttached$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->verifyPasswordAndUnlock()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onViewAttached$3(Landroid/view/View;)V
    .locals 1

    const-string p1, "KeyguardKnoxGuardView"

    const-string v0, "mWifiButton OnClick"

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private synthetic lambda$onViewAttached$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 317
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAllSimState(I)Z

    move-result p2

    .line 318
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDataButton OnClick noSimState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dataAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->kg_knox_guard_no_sim_card_toast:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 323
    sget p2, Lcom/android/systemui/R$string;->tile_prevent_change_setting_toast:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget v2, Lcom/android/systemui/R$string;->mobile_data_title:I

    .line 324
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 323
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->isDataRoamingEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "update data roaming settings"

    .line 326
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "data_roaming"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setKnoxGuardInfo$5(Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 2

    const-string p2, "KeyguardKnoxGuardView"

    const-string v0, "mOptionButton OnClick"

    .line 421
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 423
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.kgclient.intent.action.SUPPORT_PAGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.kgclient"

    const-string v1, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    .line 424
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 425
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setKnoxGuardInfo$6(Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 3

    const-string p3, "KeyguardKnoxGuardView"

    .line 467
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    :try_start_0
    const-string v0, "click customer app button"

    .line 469
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.kgclient.intent.action.CUSTOMER_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    const-string v2, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "customerPackageName"

    .line 474
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x20

    .line 476
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 480
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 483
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    return-void
.end method

.method private synthetic lambda$setKnoxGuardInfo$7(Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 3

    const-string p3, "KeyguardKnoxGuardView"

    .line 504
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    .line 506
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 507
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string p1, "click call button"

    .line 509
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz p2, :cond_0

    .line 512
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find the component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resetPinErrorMessage()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method private setFailedUnlockAttemptCount(II)I
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(Ljava/lang/String;JI)V

    return p2
.end method

.method private setKnoxGuardInfo()V
    .locals 13

    const-string v0, "KeyguardKnoxGuardView"

    const-string/jumbo v1, "setKnoxGuardInfo"

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "mRemoteLockInfo is null - dismiss"

    .line 375
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 378
    iput-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 379
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 382
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {v1, v4, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    return-void

    .line 387
    :cond_1
    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 388
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "mRemoteLockInfo.clientName is empty"

    .line 390
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "mRemoteLockInfo.clientName is null"

    .line 394
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    .line 397
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_4

    .line 398
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 402
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 404
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_6

    .line 405
    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 406
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v5, "mRemoteLockInfo.message is null"

    .line 410
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipSupport:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 415
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v5, "mRemoteLockInfo.skipSupportContainer is true"

    .line 416
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 418
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$string;->kg_remote_lock_option_header:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    if-eqz v5, :cond_c

    const-string v8, "customer_package_name"

    .line 436
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_c

    .line 438
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_8

    .line 439
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 442
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "customer_app_name"

    .line 443
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 449
    :try_start_0
    invoke-virtual {v9, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    .line 451
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NameNotFoundException while updating icon : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v3, :cond_a

    .line 455
    iget-object v10, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_9

    goto :goto_4

    .line 456
    :cond_9
    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    :goto_4
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0, v3, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getShortcutIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 459
    :cond_a
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    move-object v5, v8

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    sget v5, Lcom/android/systemui/R$drawable;->kg_knox_guard_ic_default_app:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customerPackageName : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_e

    .line 466
    new-instance v5, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v8, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 489
    :cond_c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_d

    .line 490
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_d
    const-string v3, "mRemoteLockInfo.bundle is null"

    .line 492
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_e
    :goto_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_10

    .line 496
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_8

    .line 500
    :cond_f
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_remote_lock_accessibility_call:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 520
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "mRemoteLockInfo.phoneNumber is null"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    .line 526
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateKnoxGuardLayout()V

    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateFontScale()V

    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 0

    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 693
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t write long "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardKnoxGuardView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 648
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showToast : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardKnoxGuardView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 803
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 804
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private updateErrorMessage()V
    .locals 4

    .line 775
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 777
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 778
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateFontScale()V
    .locals 4

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 810
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 811
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 813
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 814
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 815
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 816
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private updateKnoxGuardLayout()V
    .locals 2

    .line 720
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 722
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 726
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    :goto_0
    return-void
.end method

.method private updateNetworkSettingsButton()V
    .locals 7

    .line 782
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 783
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 784
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v4

    .line 785
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAllSimState(I)Z

    move-result v1

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNetworkSettingsButton wifi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  mobileData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  wifiOnly : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  noSimState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyguardKnoxGuardView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v2

    .line 791
    :goto_2
    invoke-virtual {v5, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 793
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p0, :cond_6

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    :cond_4
    move v2, v6

    .line 794
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateTopContainer()V
    .locals 7

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-float v2, v0

    .line 733
    sget v3, Lcom/android/systemui/R$dimen;->kg_knox_guard_top_margin_ratio:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTopContainer screenHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " topMargin : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KeyguardKnoxGuardView"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 738
    sget v5, Lcom/android/systemui/R$dimen;->kg_message_area_width_tablet:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/android/systemui/R$dimen;->kg_knox_guard_view_margin_start:I

    .line 739
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    sget v6, Lcom/android/systemui/R$dimen;->kg_knox_guard_view_margin_end:I

    .line 740
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 741
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTopContainer mCompanyNameTextView.height : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_5

    .line 748
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 749
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 750
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    sget v3, Lcom/android/systemui/R$dimen;->kg_knox_guard_message_area_min_height_ratio:I

    .line 752
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 751
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 754
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 753
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 754
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 755
    sget v0, Lcom/android/systemui/R$dimen;->kg_knox_guard_message_area_max_height_with_3_buttons_ratio:I

    goto :goto_1

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 757
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 759
    :cond_3
    sget v0, Lcom/android/systemui/R$dimen;->kg_knox_guard_message_area_max_height_ratio:I

    goto :goto_1

    .line 758
    :cond_4
    :goto_0
    sget v0, Lcom/android/systemui/R$dimen;->kg_knox_guard_message_area_max_height_with_2_buttons_ratio:I

    .line 760
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getPasswordText()[B
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 10

    .line 593
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 598
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;JJ)V

    .line 634
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    return-void
.end method

.method protected onUserInput()V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 5

    .line 262
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 269
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    .line 270
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "data_roaming"

    .line 271
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 274
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 291
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v1, Lcom/android/systemui/R$id;->phone_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    .line 334
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    sget v2, Lcom/android/systemui/R$id;->option_image:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 335
    sget v2, Lcom/android/systemui/R$drawable;->kg_knox_guard_ic_call:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    sget v0, Lcom/android/systemui/R$drawable;->kg_knox_guard_ic_options:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setKnoxGuardInfo()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 344
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 4

    .line 357
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 359
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getFailedUnlockAttemptCount(I)I

    move-result v2

    sput v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method protected updateLayout()V
    .locals 0

    .line 766
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 767
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateTopContainer()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 7

    const-string v0, "KeyguardKnoxGuardView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getPasswordText()[B

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 534
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 536
    array-length v2, v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    .line 539
    array-length v0, v1

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    .line 544
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    return-void

    .line 549
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 550
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 549
    invoke-interface {v2, v4, v1, v3, v6}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    .line 551
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t connect KNOX_GUARD"

    .line 553
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
