UI & Animation (Jetpack Compose)
Resource: Jetpack Compose Animation APIs
Link: https://developer.android.com/jetpack/compose/animation
What it's for: This is the foundational set of APIs for creating all types of animations natively within Jetpack Compose.
Features:

High-level APIs for simple value changes (e.g., animate*AsState).

APIs for animating visibility and layout changes (e.g., AnimatedVisibility).

Lower-level APIs for full control over complex, chained, or repeatable animations (e.g., Animatable, AnimationSpec).

Built directly into the Compose framework for optimal performance.
Best for: Creating fluid transitions, state-based animations, and performant UI feedback directly within your composable functions.

Resource: Lottie for Jetpack Compose
Link: https://airbnb.io/lottie/android/compose.html
What it's for: A library for parsing Adobe After Effects animations exported as JSON and rendering them natively in your app.
Features:

Renders complex vector animations at high frame rates.

Allows for programmatic control over animation playback (e.g., play, pause, loop, progress).

Supports dynamic properties to change colours or other elements at runtime.

Small file sizes for animations compared to animated GIFs or video files.
Best for: Implementing the high-quality, illustrative 2D character animations that are central to your app's theme.

Resource: Jetpack Compose Canvas API
Link: https://developer.android.com/jetpack/compose/graphics/draw/canvas
What it's for: A low-level drawing API that provides a canvas on which you can draw custom shapes, paths, and images with full control.
Features:

Draw arbitrary shapes, lines, and curves.

Apply complex transformations like rotation, scaling, and translation.

Clip drawing areas and blend colours.

Integrates perfectly with Compose's state management for dynamic, interactive graphics.
Best for: Creating the unique, highly customised UI elements that match the illustrative "Graeme Base" or "Bluey" style, going beyond standard components.

Local Data Storage (Offline-First & On-Device)
Resource: Jetpack Room
Link: https://developer.android.com/jetpack/androidx/releases/room
What it's for: A database object mapping library that provides an abstraction layer over SQLite for robust local data storage.
Features:

Compile-time verification of SQL queries.

Boilerplate code generation for converting between SQL and Kotlin data objects.

Returns Flow or LiveData for observing data changes, fitting perfectly with reactive UI.

Provides helpers for complex database migrations.
Best for: Storing structured user data, such as the child's progress, reward history, and achievements, in a secure on-device database.

Resource: Jetpack DataStore
Link: https://developer.android.com/topic/libraries/architecture/datastore
What it's for: A modern data storage solution designed to replace SharedPreferences, for storing simple key-value pairs or typed objects.
Features:

Asynchronous API using Kotlin coroutines and Flow to prevent blocking the main thread.

Guarantees data consistency and handles data migration.

Two implementations: Preferences DataStore (for simple key-value pairs) and Proto DataStore (for typed objects via Protocol Buffers).

Error signalling for when data fails to read or write.
Best for: Storing simple, non-relational data like the child's name, selected character, or user settings, ensuring type safety and thread safety.

Core App Functionality
Resource: Google Play Billing Library
Link: https://developer.android.com/google/play/billing_library
What it's for: The official client library for integrating your app with Google Play's billing system. This is mandatory for selling digital goods.
Features:

Manages the communication between your app and the Google Play service.

Simplifies the process for querying product details, launching purchase flows, and handling transactions.

Supports one-time products, subscriptions, and retrieving purchase history.

Provides a secure and reliable payment processing flow.
Best for: Implementing the single, one-time in-app purchase to unlock the app's premium features.

Resource: Android Notifications Guide
Link: https://developer.android.com/guide/topics/ui/notifiers/notifications
What it's for: The official documentation for creating and managing all types of local notifications on Android.
Features:

Detailed guides for creating notification channels and setting importance levels.

Instructions for setting timers and scheduling future notifications using AlarmManager.

Support for customising notification content, including text, icons, and actions.

APIs for adding custom sounds, which is required for your "Character Call-out" feature.
Best for: Implementing the app's core reminder system with reliable, scheduled, and personalised local notifications.

Analytics
Resource: Firebase SDK for Google Analytics
Link: https://firebase.google.com/docs/analytics/get-started?platform=android
What it's for: The official SDK for integrating Google Analytics into your Android application to measure user engagement.
Features:

Automatically logs key events and user properties.

Allows for logging of custom events to track app-specific goals (e.g., reward_unlocked).

Automatically caches events on-device when offline and uploads them when a network connection is restored.

Integrates with other Firebase services like Crashlytics and Remote Config.
Best for: Implementing a robust analytics system that reliably captures user interaction, even when the device is offline.