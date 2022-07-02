.class Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutData"
.end annotation


# instance fields
.field enabled:Z

.field mAppLabel:Ljava/lang/String;

.field mComponentName:Landroid/content/ComponentName;

.field mDefaultShortcut:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mNoUnlockNeeded:Z

.field mPanelDrawable:Landroid/graphics/drawable/Drawable;

.field mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

.field shortcutProperty:I

.field taskName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1201
    iput-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1203
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 1204
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDefaultShortcut:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager$1;)V
    .locals 0

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;-><init>()V

    return-void
.end method
