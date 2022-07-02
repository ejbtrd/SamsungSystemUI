.class Lcom/android/keyguard/KeyguardSecESimArea;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecESimArea.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mESimText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$v3Fonq16N9lh5epupjSqiOlzbrk(Lcom/android/keyguard/KeyguardSecESimArea;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecESimArea;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance p2, Lcom/android/keyguard/KeyguardSecESimArea$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecESimArea$1;-><init>(Lcom/android/keyguard/KeyguardSecESimArea;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string p2, "euicc"

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 125
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 4

    const-string p1, "KeyguardSecEsimArea"

    const-string v0, "onClick - skip button"

    .line 150
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.keyguard.disable_esim"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 187
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 189
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 190
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material:I

    .line 188
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public eraseSubscriptions()V
    .locals 5

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keyguard.euicc_reset"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v1, v3, v0, v4, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 131
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.keyguard.disable_esim"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.permission.SELF"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 137
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 144
    sget v0, Lcom/android/systemui/R$id;->esim_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    .line 145
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecESimArea$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecESimArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecESimArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/android/systemui/R$id;->skip_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 167
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->updateProgressBarDrawable()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->updateProgressBarDrawable()V

    return-void
.end method
