# TASK_DEPS.md: The Bigger Boss Landing Page v2.1

**Feature:** Implement the MVP for "The Bigger Boss" landing page, focusing on the interactive "Instant Angle" Generator and dual-audience messaging.

| ID    | Task Description                                                                                                       | Status      | Dependencies | Surgical Context (@mention)                             |
| :---- | :--------------------------------------------------------------------------------------------------------------------- | :---------- | :----------- | :------------------------------------------------------ |
| **P0: Project Setup & AI Onboarding** |
| 0.1   | Generate foundational `.cursor/rules` from project tech stack (Next.js, TS, Tailwind).                                   | 📋 To Do    | -            |                                                         |
| 0.2   | Create structured Design System Profile (e.g., JSON) defining colours, typography, spacing.                              | 📋 To Do    | -            | `@file:src/lib/design-system.json`                      |
| **P1: API - "Instant Angle" Generator** |
| 1.1   | Scaffold Next.js API route file for the "Instant Angle" generator.                                                     | 📋 To Do    | -            | `@file:src/app/api/instant-angle/route.ts`              |
| 1.2   | Implement strict Zod schema for the `keyword` input within the API route.                                              | 📋 To Do    | 1.1          | `@file:src/app/api/instant-angle/route.ts`              |
| 1.3   | Implement strict, allow-list-based URL validation for the `competitor's URL` to mitigate SSRF risk.                     | 📋 To Do    | 1.2          | `@file:src/app/api/instant-angle/route.ts`              |
| 1.4   | Implement the core API logic to handle the validated request and return placeholder AI-generated angles.               | 📋 To Do    | 1.3          | `@file:src/app/api/instant-angle/route.ts`              |
| **P2: Security - Content Sanitisation** |
| 2.1   | Add `DOMPurify` and its corresponding `@types/dompurify` package to project dependencies.                                | 📋 To Do    | -            | `@file:package.json`                                    |
| 2.2   | Create a sanitisation utility function in `src/lib/utils.ts` that wraps DOMPurify.                                     | 📋 To Do    | 2.1          | `@file:src/lib/utils.ts`                                |
| **P3: Frontend - "Instant Angle" Component** |
| 3.1   | Scaffold the React component file for the "Instant Angle" generator.                                                   | 📋 To Do    | -            | `@file:src/components/features/instant-angle-generator/index.tsx` |
| 3.2   | Build the component UI with input fields (keyword, URL) and a submit button using Tailwind CSS.                          | 📋 To Do    | 3.1          | `@symbol:InstantAngleGenerator`                         |
| 3.3   | Implement client-side fetch logic to call the `/api/instant-angle` endpoint.                                           | 📋 To Do    | 1.4, 3.2     | `@symbol:InstantAngleGenerator`                         |
| 3.4   | Implement rendering of results, ensuring all AI-generated content is passed through the sanitisation utility.          | 📋 To Do    | 2.2, 3.3     | `@symbol:InstantAngleGenerator`                         |
| 3.5   | Add UI feedback states (loading, disabled, error) to the component during API interaction.                             | 📋 To Do    | 3.3          | `@symbol:InstantAngleGenerator`                         |
| **P4: Frontend - "Dual-Path" Messaging** |
| 4.1   | Create a React Context to manage the selected audience state ("business" or "agency").                                   | 📋 To Do    | -            | `@file:src/lib/context/AudienceContext.tsx`             |
| 4.2   | Wrap the main application page with the new `AudienceProvider`.                                                        | 📋 To Do    | 4.1          | `@file:src/app/(main)/page.tsx`                         |
| 4.3   | Create a dynamic headline component that consumes the `AudienceContext`.                                                 | 📋 To Do    | 4.1          | `@file:src/components/features/dynamic-headline/index.tsx` |
| 4.4   | Create a dynamic testimonials component that consumes the `AudienceContext`.                                             | 📋 To Do    | 4.1          | `@file:src/components/features/dynamic-testimonials/index.tsx` |
| 4.5   | Implement UI controls (e.g., buttons) on the main page to update the `AudienceContext`.                                | 📋 To Do    | 4.2          | `@file:src/app/(main)/page.tsx`                         |
| **P5: API & Frontend - Free Trial Sign-up** |
| 5.1   | Scaffold Next.js API route file for the trial sign-up form.                                                            | 📋 To Do    | -            | `@file:src/app/api/trial-signup/route.ts`               |
| 5.2   | Implement a token-based defence against CSRF for the sign-up API route.                                                  | 📋 To Do    | 5.1          | `@file:src/app/api/trial-signup/route.ts`               |
| 5.3   | Implement the API logic to handle the validated form submission.                                                         | 📋 To Do    | 5.2          | `@file:src/app/api/trial-signup/route.ts`               |
| 5.4   | Scaffold the React component for the free trial sign-up form.                                                          | 📋 To Do    | -            | `@file:src/components/features/trial-signup-form/index.tsx` |
| 5.5   | Implement client-side logic in the form to fetch a CSRF token and submit data to the API.                                | 📋 To Do    | 5.3, 5.4     | `@symbol:TrialSignupForm`                               |
| **P6: Layout & Integration** |
| 6.1   | Build the main page layout, including Header and Footer, using reusable components and Tailwind CSS.                     | 📋 To Do    | -            | `@file:src/app/(main)/page.tsx`                         |
| 6.2   | Integrate the `InstantAngleGenerator` component into the main page.                                                    | 📋 To Do    | 3.5, 6.1     | `@file:src/app/(main)/page.tsx`                         |
| 6.3   | Integrate the dynamic headline, testimonials, and audience selection controls into the main page.                      | 📋 To Do    | 4.5, 6.2     | `@file:src/app/(main)/page.tsx`                         |
| 6.4   | Integrate the `TrialSignupForm`, displayed conditionally after a successful tool interaction.                            | 📋 To Do    | 5.5, 6.3     | `@file:src/app/(main)/page.tsx`                         |
| 6.5   | (C) Add subtle Framer Motion transitions to the dynamic headline and testimonials on audience change.                  | 📋 To Do    | 6.3          | `@file:src/components/features/dynamic-headline/index.tsx` |

