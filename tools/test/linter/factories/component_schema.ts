import ComponentSchema from '../../../linter/components/ComponentSchema'
import { type OpenAPIV3 } from 'openapi-types'

export function component_schema (name: string, spec: Record<string, any> = {}): ComponentSchema {
  return new ComponentSchema('_common.yaml', name, spec as OpenAPIV3.SchemaObject)
}

interface MockedReturnedValues {
  validate?: string[]
  validate_name?: string | undefined
}

export function mocked_component_schema (returned_values: MockedReturnedValues): ComponentSchema {
  const schema = new ComponentSchema('_common.yaml', 'Schema', {})

  if (returned_values.validate) {
    schema.validate = jest.fn();
    (schema.validate as jest.Mock).mockReturnValue(returned_values.validate)
    return schema
  }

  schema.validate_name = jest.fn()

  if (returned_values.validate_name != null) (schema.validate_name as jest.Mock).mockReturnValue(returned_values.validate_name)

  return schema
}
