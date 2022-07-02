.class final Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;
.super Ljava/lang/Object;
.source "KshChildViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshChildViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringDrawableContainer"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mString:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
