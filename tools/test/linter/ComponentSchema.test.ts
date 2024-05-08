import { component_schema } from './factories/component_schema'

test('validate_name()', () => {
  expect(component_schema('invalid_name').validate_name()).toEqual({
    file: '_common.yaml',
    location: '#/components/schemas/invalid_name',
    message: "Invalid schema name 'invalid_name'. Only alphanumeric characters are allowed."
  })
  expect(component_schema('Invalid.Name').validate_name()).toBeDefined()

  expect(component_schema('ValidName1').validate_name()).toBeUndefined()
  expect(component_schema('Valid1Name').validate_name()).toBeUndefined()
  expect(component_schema('uint').validate_name()).toBeUndefined()
})
