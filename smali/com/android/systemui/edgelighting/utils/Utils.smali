.class public Lcom/android/systemui/edgelighting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 221
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/utils/Utils;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getColorName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "purple"

    goto :goto_0

    :pswitch_1
    const-string p0, "indie pink"

    goto :goto_0

    :pswitch_2
    const-string p0, "deep blue"

    goto :goto_0

    :pswitch_3
    const-string/jumbo p0, "skyblue"

    goto :goto_0

    :pswitch_4
    const-string/jumbo p0, "turquoise"

    goto :goto_0

    :pswitch_5
    const-string p0, "green"

    goto :goto_0

    :pswitch_6
    const-string p0, "light green"

    goto :goto_0

    :pswitch_7
    const-string p0, "orange"

    goto :goto_0

    :pswitch_8
    const-string/jumbo p0, "red"

    goto :goto_0

    :pswitch_9
    const-string p0, "pink"

    goto :goto_0

    :pswitch_a
    const-string p0, "blue"

    goto :goto_0

    :cond_0
    const-string p0, "custom"

    goto :goto_0

    :cond_1
    const-string p0, "app color"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContentFrameWidthRatio(Landroid/content/Context;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v2, 0x24d

    if-lt v1, v2, :cond_1

    const/16 v2, 0x3bf

    if-gt v1, v2, :cond_1

    const/16 v2, 0x19b

    if-lt p0, v2, :cond_1

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/16 p0, 0x3c0

    if-lt v1, p0, :cond_2

    const/16 p0, 0x77f

    if-gt v1, p0, :cond_2

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    const/16 p0, 0x780

    if-lt v1, p0, :cond_3

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_3
    :goto_0
    return v0
.end method

.method public static getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "preload/gradation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "preload/wave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "preload/glow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "preload/echo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "preload/heart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "preload/basic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "preload/reflection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "preload/bubble"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "preload/eclipse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "preload/noframe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "preload/fireworks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "preload/spotlight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    goto :goto_1

    :pswitch_0
    const-string p0, "multicolor"

    goto :goto_1

    :pswitch_1
    const-string/jumbo p0, "wave"

    goto :goto_1

    :pswitch_2
    const-string p0, "glow"

    goto :goto_1

    :pswitch_3
    const-string p0, "echo"

    goto :goto_1

    :pswitch_4
    const-string p0, "heart"

    goto :goto_1

    :pswitch_5
    const-string p0, "basic"

    goto :goto_1

    :pswitch_6
    const-string p0, "glitter"

    goto :goto_1

    :pswitch_7
    const-string p0, "bubble"

    goto :goto_1

    :pswitch_8
    const-string p0, "elicpse"

    goto :goto_1

    :pswitch_9
    const-string p0, "none"

    goto :goto_1

    :pswitch_a
    const-string p0, "fireworks"

    goto :goto_1

    :pswitch_b
    const-string/jumbo p0, "spotlight"

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x647c7732 -> :sswitch_b
        -0x3d666d7a -> :sswitch_a
        -0x286061ba -> :sswitch_9
        -0x18a1efbf -> :sswitch_8
        -0xd3304ae -> :sswitch_7
        0x27565ff1 -> :sswitch_6
        0x39589ca8 -> :sswitch_5
        0x39aeb8c0 -> :sswitch_4
        0x5cb1aa6b -> :sswitch_3
        0x5cb2b5d3 -> :sswitch_2
        0x5cb9d33f -> :sswitch_1
        0x7795ece1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const-string v0, ""

    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 189
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 190
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    .line 194
    :goto_0
    sget-object v1, Lcom/android/systemui/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version NAme : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "edgelighting_pref"

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 353
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 354
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static logString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "edgelighting_pref"

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 344
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static runDragAndDrop(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/view/View;)Z
    .locals 2

    .line 401
    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->getPkgIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 403
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->drag_and_drop_icon_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1, v1, p2, p0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 409
    new-instance p0, Landroid/content/ClipDescription;

    const-string p2, "application/vnd.android.activity"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v1, "Drag And Drop(E)"

    invoke-direct {p0, v1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 411
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.PENDING_INTENT"

    .line 412
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 413
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER"

    const-string v1, "edgelighting"

    .line 414
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    new-instance p1, Landroid/content/ClipData$Item;

    invoke-direct {p1, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 417
    new-instance p2, Landroid/content/ClipData;

    invoke-direct {p2, p0, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 418
    new-instance p0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p0, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    const v0, 0x100100

    .line 420
    invoke-virtual {p3, p2, p0, p1, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V
    .locals 0

    .line 288
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->isTalkBackMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
