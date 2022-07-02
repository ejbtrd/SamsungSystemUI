.class Lcom/android/wm/shell/draganddrop/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mIntent:Landroid/content/Intent;

.field final mIsDropResolver:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    return-void
.end method
