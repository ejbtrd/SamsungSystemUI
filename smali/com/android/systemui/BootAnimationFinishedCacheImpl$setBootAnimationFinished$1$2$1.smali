.class final Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;
.super Ljava/lang/Object;
.source "BootAnimationFinishedCacheImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BootAnimationFinishedCacheImpl;->setBootAnimationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    invoke-interface {p0}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V

    return-void
.end method
