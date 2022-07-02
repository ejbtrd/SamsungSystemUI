.class public Lcom/android/settingslib/widget/IllustrationPreference;
.super Landroidx/preference/Preference;
.source "IllustrationPreference.java"


# instance fields
.field private final mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsAutoScale:Z

.field private mMiddleGroundView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$5pjDnmd4zeR88c57sclRwEzzBoI(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->lambda$startLottieAnimationWith$0(Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GUyPcAVcZWRdo9NXlFGH9IYTjnE(ILjava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->lambda$startLottieAnimationWith$1(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 68
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    .line 310
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find content uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleImageWithAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 226
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 228
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;Landroid/net/Uri;)V

    .line 238
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    if-lez v0, :cond_4

    .line 239
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 240
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 241
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 247
    :cond_3
    iget p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleMiddleGroundView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 207
    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMiddleGroundView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 209
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 211
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 318
    sget v0, Lcom/android/settingslib/widget/R$layout;->illustration_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAutoScale:Z

    if-eqz p2, :cond_0

    .line 322
    sget-object v1, Lcom/android/settingslib/widget/R$styleable;->LottieAnimationView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 324
    sget p2, Lcom/android/settingslib/widget/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startLottieAnimationWith$0(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid illustration image uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$startLottieAnimationWith$1(ILjava/lang/Throwable;)V
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid illustration resource id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static resetAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 295
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 300
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    goto :goto_0

    .line 301
    :cond_1
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v0, :cond_2

    .line 302
    move-object v0, p0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    invoke-interface {v0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;->clearAnimationCallbacks()V

    .line 305
    :cond_2
    :goto_0
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method private static resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method private startAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 253
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 258
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    .line 259
    :cond_1
    instance-of v0, p1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v0, :cond_2

    .line 260
    move-object v0, p1

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-interface {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_0

    .line 261
    :cond_2
    instance-of p0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_3

    .line 262
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 265
    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method private static startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 1

    .line 281
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p1, -0x1

    .line 284
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 285
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private static startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;Landroid/net/Uri;)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda1;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 275
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 276
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 99
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 101
    sget v0, Lcom/android/settingslib/widget/R$id;->middleground_layout:I

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 103
    sget v1, Lcom/android/settingslib/widget/R$id;->lottie_view:I

    .line 104
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 109
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 111
    sget v4, Lcom/android/settingslib/widget/R$id;->illustration_frame:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 113
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 114
    :goto_0
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/android/settingslib/widget/IllustrationPreference;->handleImageWithAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 119
    iget-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAutoScale:Z

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    .line 121
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 122
    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 120
    :goto_1
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->handleMiddleGroundView(Landroid/view/ViewGroup;)V

    return-void
.end method
